import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_data.freezed.dart';
part 'audio_data.g.dart';

/// Represents recorded audio data with metadata
///
/// Contains:
/// - File path to the recorded audio
/// - Duration of the recording
/// - Sample rate (default: 16kHz as per AppConstants)
/// - File size in bytes
/// - Timestamp when recorded
@freezed
class AudioData with _$AudioData {
  const factory AudioData({
    /// Absolute path to the audio file
    required String filePath,

    /// Duration of the recording in milliseconds
    required int durationMs,

    /// Audio sample rate in Hz (e.g., 16000 for 16kHz)
    required int sampleRate,

    /// File size in bytes
    required int fileSizeBytes,

    /// Timestamp when the recording was created
    required DateTime timestamp,

    /// Optional: Tajwid rule being evaluated (set later during inference)
    String? tajwidRuleId,

    /// Optional: Additional metadata (e.g., device info, recording quality)
    Map<String, dynamic>? metadata,
  }) = _AudioData;

  const AudioData._();

  factory AudioData.fromJson(Map<String, dynamic> json) =>
      _$AudioDataFromJson(json);

  /// Get duration in seconds
  double get durationSeconds => durationMs / 1000.0;

  /// Get file size in kilobytes
  double get fileSizeKB => fileSizeBytes / 1024.0;

  /// Get file size in megabytes
  double get fileSizeMB => fileSizeBytes / (1024.0 * 1024.0);

  /// Get formatted duration string (e.g., "3.5s")
  String get durationFormatted => '${durationSeconds.toStringAsFixed(1)}s';

  /// Get formatted file size string
  String get fileSizeFormatted {
    if (fileSizeMB >= 1) {
      return '${fileSizeMB.toStringAsFixed(2)} MB';
    } else if (fileSizeKB >= 1) {
      return '${fileSizeKB.toStringAsFixed(2)} KB';
    } else {
      return '$fileSizeBytes bytes';
    }
  }

  /// Check if audio meets minimum duration requirement (e.g., >= 1 second)
  bool get meetsMinimumDuration => durationMs >= 1000;

  /// Check if audio meets maximum duration requirement (e.g., <= 30 seconds)
  bool get meetsMaximumDuration => durationMs <= 30000;

  /// Check if audio duration is valid (between 1-30 seconds)
  bool get hasValidDuration => meetsMinimumDuration && meetsMaximumDuration;

  /// Check if sample rate matches expected rate (16kHz)
  bool get hasValidSampleRate => sampleRate == 16000;
}
