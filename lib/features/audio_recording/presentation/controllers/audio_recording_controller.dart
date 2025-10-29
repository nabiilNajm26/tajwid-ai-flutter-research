import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/utils/logger.dart';
import '../../domain/entities/audio_data.dart';
import '../../domain/entities/recording_status.dart';
import '../providers/audio_providers.dart';

part 'audio_recording_controller.g.dart';

/// State for audio recording feature.
class AudioRecordingState {
  final RecordingStatus status;
  final AudioData? audioData;
  final String? errorMessage;
  final int durationMs;

  const AudioRecordingState({
    this.status = RecordingStatus.idle,
    this.audioData,
    this.errorMessage,
    this.durationMs = 0,
  });

  AudioRecordingState copyWith({
    RecordingStatus? status,
    AudioData? audioData,
    String? errorMessage,
    int? durationMs,
  }) {
    return AudioRecordingState(
      status: status ?? this.status,
      audioData: audioData ?? this.audioData,
      errorMessage: errorMessage ?? this.errorMessage,
      durationMs: durationMs ?? this.durationMs,
    );
  }
}

/// Controller for audio recording operations.
@riverpod
class AudioRecordingController extends _$AudioRecordingController {
  final AppLogger _logger = AppLogger();
  Timer? _durationTimer;
  DateTime? _recordingStartTime;

  @override
  AudioRecordingState build() {
    ref.onDispose(() {
      _durationTimer?.cancel();
    });
    return const AudioRecordingState();
  }

  /// Start recording audio.
  Future<void> startRecording() async {
    if (!state.status.canStartRecording) {
      _logger.warning('Cannot start recording in current state: ${state.status}');
      return;
    }

    state = state.copyWith(
      status: RecordingStatus.recording,
      errorMessage: null,
    );

    final startRecordingUseCase = ref.read(startRecordingProvider);
    final result = await startRecordingUseCase();

    result.fold(
      (failure) {
        _logger.error('Failed to start recording', error: failure.message);
        state = state.copyWith(
          status: RecordingStatus.error,
          errorMessage: failure.message,
        );
      },
      (_) {
        _logger.info('Recording started successfully');
        // Start timer to update duration every 100ms
        _recordingStartTime = DateTime.now();
        _startDurationTimer();
      },
    );
  }

  /// Start timer to update recording duration
  void _startDurationTimer() {
    _durationTimer?.cancel();
    _durationTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_recordingStartTime != null && state.status.isRecording) {
        final duration = DateTime.now().difference(_recordingStartTime!);
        state = state.copyWith(durationMs: duration.inMilliseconds);
      }
    });
  }

  /// Stop recording and get audio data.
  Future<void> stopRecording() async {
    if (!state.status.canStopRecording) {
      _logger.warning('Cannot stop recording in current state: ${state.status}');
      return;
    }

    // Stop duration timer
    _durationTimer?.cancel();
    _durationTimer = null;
    _recordingStartTime = null;

    final stopRecordingUseCase = ref.read(stopRecordingProvider);
    final result = await stopRecordingUseCase();

    result.fold(
      (failure) {
        _logger.error('Failed to stop recording', error: failure.message);
        state = state.copyWith(
          status: RecordingStatus.error,
          errorMessage: failure.message,
        );
      },
      (audioData) {
        _logger.info('Recording stopped: ${audioData.filePath}');
        state = state.copyWith(
          status: RecordingStatus.stopped,
          audioData: audioData,
          durationMs: audioData.durationMs,
        );
      },
    );
  }

  /// Reset to idle state.
  void reset() {
    _durationTimer?.cancel();
    _durationTimer = null;
    _recordingStartTime = null;
    state = const AudioRecordingState();
  }

  /// Delete current audio file.
  Future<void> deleteCurrentAudio() async {
    if (state.audioData == null) return;

    final repository = ref.read(audioRepositoryProvider);
    await repository.deleteAudioFile(state.audioData!.filePath);

    state = const AudioRecordingState();
    _logger.info('Audio file deleted');
  }
}
