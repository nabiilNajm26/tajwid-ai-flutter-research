import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/audio_data.dart';

/// Repository interface for audio recording operations
///
/// Follows Clean Architecture principles:
/// - Domain layer defines the contract
/// - Data layer implements the actual logic
/// - Returns Either(Failure, Success) for error handling
abstract class AudioRepository {
  /// Start recording audio
  ///
  /// Returns:
  /// - Right(void) if recording started successfully
  /// - Left(AudioRecordingFailure) if failed to start
  Future<Either<Failure, void>> startRecording();

  /// Stop recording audio and save to file
  ///
  /// Returns:
  /// - Right(AudioData) with file path and metadata
  /// - Left(AudioRecordingFailure) if failed to stop or save
  Future<Either<Failure, AudioData>> stopRecording();

  /// Pause recording (optional feature)
  ///
  /// Returns:
  /// - Right(void) if paused successfully
  /// - Left(AudioRecordingFailure) if failed to pause
  Future<Either<Failure, void>> pauseRecording();

  /// Resume recording after pause (optional feature)
  ///
  /// Returns:
  /// - Right(void) if resumed successfully
  /// - Left(AudioRecordingFailure) if failed to resume
  Future<Either<Failure, void>> resumeRecording();

  /// Check if recording permission is granted
  ///
  /// Returns:
  /// - Right(true) if permission granted
  /// - Right(false) if permission denied
  /// - Left(Failure) if error checking permission
  Future<Either<Failure, bool>> hasRecordingPermission();

  /// Request recording permission from user
  ///
  /// Returns:
  /// - Right(true) if permission granted
  /// - Right(false) if permission denied
  /// - Left(Failure) if error requesting permission
  Future<Either<Failure, bool>> requestRecordingPermission();

  /// Get current recording duration in milliseconds
  ///
  /// Returns:
  /// - Right(duration) in milliseconds
  /// - Left(Failure) if not recording or error
  Future<Either<Failure, int>> getCurrentDuration();

  /// Delete recorded audio file
  ///
  /// Returns:
  /// - Right(void) if deleted successfully
  /// - Left(Failure) if failed to delete
  Future<Either<Failure, void>> deleteAudioFile(String filePath);
}
