import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/entities/audio_data.dart';

/// Data source for audio recording operations using flutter_sound.
///
/// Handles low-level audio recording with WAV format (16kHz, mono).
/// Platform: Android and iOS
abstract class AudioRecorderDataSource {
  /// Start recording audio to a temporary file.
  ///
  /// Returns the file path where audio is being recorded.
  /// Throws [AudioRecordingException] if recording fails to start.
  Future<String> startRecording();

  /// Stop recording and return audio metadata.
  ///
  /// Returns [AudioData] with file path, duration, size, etc.
  /// Throws [AudioRecordingException] if no active recording.
  Future<AudioData> stopRecording();

  /// Check if microphone permission is granted.
  Future<bool> hasPermission();

  /// Request microphone permission.
  ///
  /// Returns true if granted, false if denied.
  Future<bool> requestPermission();

  /// Get current recording duration in milliseconds.
  ///
  /// Returns 0 if not recording.
  Future<int> getCurrentDuration();

  /// Delete audio file at given path.
  Future<void> deleteAudioFile(String filePath);

  /// Dispose resources (close recorder).
  Future<void> dispose();
}

/// Implementation using flutter_sound package.
class AudioRecorderDataSourceImpl implements AudioRecorderDataSource {
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();
  final AppLogger _logger = AppLogger();

  bool _isInitialized = false;
  String? _currentFilePath;
  DateTime? _recordingStartTime;

  // Audio configuration (aligned with AppConstants)
  static const int _sampleRate = 16000; // 16kHz
  static const int _numChannels = 1; // Mono
  static const Codec _codec = Codec.aacADTS; // AAC format (better emulator support)

  /// Initialize the recorder (lazy initialization).
  Future<void> _ensureInitialized() async {
    if (_isInitialized) return;

    try {
      // Open recorder with audio focus
      await _recorder.openRecorder();

      // Set audio session category (important for Android)
      await _recorder.setSubscriptionDuration(const Duration(milliseconds: 100));

      _isInitialized = true;
      _logger.info('AudioRecorder initialized successfully');
    } catch (e) {
      _logger.error('Failed to initialize AudioRecorder', error: e);
      throw const AudioRecordingException(
        'Failed to initialize audio recorder',
      );
    }
  }

  @override
  Future<String> startRecording() async {
    try {
      // Web is not supported
      if (kIsWeb) {
        throw const AudioRecordingException(
          'Audio recording is not supported on web. Please use Android or iOS.',
        );
      }

      await _ensureInitialized();

      // Check permission first
      final hasPermission = await this.hasPermission();
      _logger.info('Microphone permission status: $hasPermission');

      if (!hasPermission) {
        // Try to request permission
        final granted = await requestPermission();
        _logger.info('Permission request result: $granted');

        if (!granted) {
          throw const AudioRecordingException(
            'Microphone permission not granted. Please enable in Settings.',
          );
        }
      }

      // Generate unique file path
      final directory = await getTemporaryDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final filePath = '${directory.path}/tajwid_audio_$timestamp.aac'; // AAC extension

      // Start recording
      _logger.info('Starting recorder with: codec=$_codec, sampleRate=$_sampleRate, channels=$_numChannels');
      _logger.info('Output path: $filePath');

      await _recorder.startRecorder(
        toFile: filePath,
        codec: _codec,
        sampleRate: _sampleRate,
        numChannels: _numChannels,
      );

      // Verify recorder is actually running
      final isRecording = _recorder.isRecording;
      _logger.info('Recorder isRecording: $isRecording');

      if (!isRecording) {
        throw const AudioRecordingException(
          'Failed to start recorder. Recorder reports not recording.',
        );
      }

      _currentFilePath = filePath;
      _recordingStartTime = DateTime.now();
      _logger.info('✅ Recording started successfully: $filePath');

      return filePath;
    } catch (e) {
      _logger.error('Failed to start recording', error: e);
      if (e is AudioRecordingException) rethrow;
      throw AudioRecordingException('Failed to start recording: $e');
    }
  }

  @override
  Future<AudioData> stopRecording() async {
    try {
      if (_currentFilePath == null) {
        throw const AudioRecordingException('No active recording to stop');
      }

      // Calculate actual recording duration
      final recordingEndTime = DateTime.now();
      final durationMs = _recordingStartTime != null
          ? recordingEndTime.difference(_recordingStartTime!).inMilliseconds
          : 0;

      // Stop recording
      await _recorder.stopRecorder();
      _logger.info('Recording stopped: $_currentFilePath (${durationMs}ms)');

      // Wait a bit for file to be written
      await Future.delayed(const Duration(milliseconds: 200));

      // Get file metadata
      final file = File(_currentFilePath!);
      if (!await file.exists()) {
        throw const AudioRecordingException('Recorded file not found');
      }

      final fileStat = await file.stat();
      final fileSizeBytes = fileStat.size;

      _logger.info('Audio file size: $fileSizeBytes bytes');

      // Warn if file is suspiciously small (only header, no data)
      if (fileSizeBytes < 1000) {
        _logger.warning('Audio file very small ($fileSizeBytes bytes). '
            'This might indicate recording failed or no audio data captured.');
      }

      final audioData = AudioData(
        filePath: _currentFilePath!,
        durationMs: durationMs,
        sampleRate: _sampleRate,
        fileSizeBytes: fileSizeBytes,
        timestamp: DateTime.now(),
      );

      _currentFilePath = null;
      _recordingStartTime = null;
      return audioData;
    } catch (e) {
      _logger.error('Failed to stop recording', error: e);
      if (e is AudioRecordingException) rethrow;
      throw AudioRecordingException('Failed to stop recording: $e');
    }
  }

  @override
  Future<bool> hasPermission() async {
    final status = await Permission.microphone.status;
    return status.isGranted;
  }

  @override
  Future<bool> requestPermission() async {
    try {
      final status = await Permission.microphone.request();
      final granted = status.isGranted;

      if (granted) {
        _logger.info('Microphone permission granted');
      } else {
        _logger.warning('Microphone permission denied');
      }

      return granted;
    } catch (e) {
      _logger.error('Failed to request permission', error: e);
      return false;
    }
  }

  @override
  Future<int> getCurrentDuration() async {
    if (!_recorder.isRecording) return 0;

    // flutter_sound doesn't provide direct duration getter
    // Alternative: track start time manually or use stream
    // For now, return 0 (can be enhanced with Timer)
    return 0;
  }

  @override
  Future<void> deleteAudioFile(String filePath) async {
    try {
      final file = File(filePath);
      if (await file.exists()) {
        await file.delete();
        _logger.info('Deleted audio file: $filePath');
      }
    } catch (e) {
      _logger.warning('Failed to delete audio file', error: e);
      // Don't throw - deletion failure is non-critical
    }
  }

  @override
  Future<void> dispose() async {
    if (_isInitialized) {
      await _recorder.closeRecorder();
      _isInitialized = false;
      _logger.info('AudioRecorder disposed');
    }
  }
}
