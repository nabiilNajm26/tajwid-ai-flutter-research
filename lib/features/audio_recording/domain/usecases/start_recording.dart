import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/audio_repository.dart';

/// Use case for starting audio recording
///
/// Steps:
/// 1. Check if recording permission is granted
/// 2. Request permission if not granted
/// 3. Start recording via repository
///
/// Returns:
/// - Right(void) if recording started successfully
/// - Left(Failure) if permission denied or recording failed
class StartRecording {
  StartRecording(this._repository);

  final AudioRepository _repository;

  /// Execute the use case
  ///
  /// Optional [checkPermission] parameter to skip permission check
  /// (default: true, set false if already checked)
  Future<Either<Failure, void>> call({bool checkPermission = true}) async {
    if (checkPermission) {
      // Check if permission is already granted
      final permissionResult = await _repository.hasRecordingPermission();

      final hasPermission = permissionResult.fold(
        (failure) => false,
        (granted) => granted,
      );

      // Request permission if not granted
      if (!hasPermission) {
        final requestResult = await _repository.requestRecordingPermission();

        final permissionGranted = requestResult.fold(
          (failure) => false,
          (granted) => granted,
        );

        if (!permissionGranted) {
          return const Left(
            AudioRecordingFailure(
              'Microphone permission denied. Please grant permission in settings.',
            ),
          );
        }
      }
    }

    // Start recording
    return _repository.startRecording();
  }
}
