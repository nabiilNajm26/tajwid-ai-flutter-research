import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/entities/audio_data.dart';
import '../../domain/repositories/audio_repository.dart';
import '../datasources/audio_recorder_datasource.dart';

/// Implementation of [AudioRepository] using flutter_sound.
///
/// Converts data source exceptions to domain failures.
class AudioRepositoryImpl implements AudioRepository {
  final AudioRecorderDataSource _dataSource;
  final AppLogger _logger = AppLogger();

  AudioRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, String>> startRecording() async {
    try {
      final filePath = await _dataSource.startRecording();
      return Right(filePath);
    } on AudioRecordingException catch (e) {
      _logger.error('Failed to start recording', error: e);
      return Left(AudioFailure(e.message));
    } catch (e) {
      _logger.error('Unexpected error starting recording', error: e);
      return const Left(AudioFailure('Unexpected error starting recording'));
    }
  }

  @override
  Future<Either<Failure, AudioData>> stopRecording() async {
    try {
      final audioData = await _dataSource.stopRecording();
      return Right(audioData);
    } on AudioRecordingException catch (e) {
      _logger.error('Failed to stop recording', error: e);
      return Left(AudioFailure(e.message));
    } catch (e) {
      _logger.error('Unexpected error stopping recording', error: e);
      return const Left(AudioFailure('Unexpected error stopping recording'));
    }
  }

  @override
  Future<Either<Failure, void>> pauseRecording() async {
    // Not implemented yet - flutter_sound supports this
    return const Left(AudioFailure('Pause recording not implemented'));
  }

  @override
  Future<Either<Failure, void>> resumeRecording() async {
    // Not implemented yet - flutter_sound supports this
    return const Left(AudioFailure('Resume recording not implemented'));
  }

  @override
  Future<Either<Failure, bool>> hasRecordingPermission() async {
    try {
      final hasPermission = await _dataSource.hasPermission();
      return Right(hasPermission);
    } catch (e) {
      _logger.error('Failed to check permission', error: e);
      return const Left(PermissionFailure('Failed to check microphone permission'));
    }
  }

  @override
  Future<Either<Failure, bool>> requestRecordingPermission() async {
    try {
      final granted = await _dataSource.requestPermission();
      return Right(granted);
    } catch (e) {
      _logger.error('Failed to request permission', error: e);
      return const Left(PermissionFailure('Failed to request microphone permission'));
    }
  }

  @override
  Future<Either<Failure, int>> getCurrentDuration() async {
    try {
      final duration = await _dataSource.getCurrentDuration();
      return Right(duration);
    } catch (e) {
      _logger.error('Failed to get current duration', error: e);
      return const Left(AudioFailure('Failed to get recording duration'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAudioFile(String filePath) async {
    try {
      await _dataSource.deleteAudioFile(filePath);
      return const Right(null);
    } catch (e) {
      _logger.warning('Failed to delete audio file', error: e);
      // Don't fail - deletion is non-critical
      return const Right(null);
    }
  }
}
