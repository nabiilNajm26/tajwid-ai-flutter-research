import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/audio_data.dart';
import '../repositories/audio_repository.dart';

/// Use case for stopping audio recording
///
/// Steps:
/// 1. Stop recording via repository
/// 2. Get audio file path and metadata
/// 3. Validate audio data (duration, sample rate)
///
/// Returns:
/// - Right(AudioData) with file path and metadata
/// - Left(Failure) if failed to stop or invalid audio
class StopRecording {
  StopRecording(this._repository);

  final AudioRepository _repository;

  /// Execute the use case
  ///
  /// Returns AudioData with:
  /// - filePath: absolute path to saved audio file
  /// - durationMs: recording duration in milliseconds
  /// - sampleRate: audio sample rate (16kHz)
  /// - fileSizeBytes: file size in bytes
  /// - timestamp: when recording was completed
  Future<Either<Failure, AudioData>> call() async {
    // Stop recording and get audio data
    final result = await _repository.stopRecording();

    return result.fold(
      (failure) => Left(failure),
      (audioData) {
        // Validate audio data
        if (!audioData.hasValidDuration) {
          return Left(
            AudioRecordingFailure(
              'Invalid recording duration: ${audioData.durationFormatted}. '
              'Recording must be between 1-30 seconds.',
            ),
          );
        }

        if (!audioData.hasValidSampleRate) {
          return Left(
            AudioRecordingFailure(
              'Invalid sample rate: ${audioData.sampleRate} Hz. '
              'Expected 16000 Hz.',
            ),
          );
        }

        return Right(audioData);
      },
    );
  }
}
