import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/audio_recorder_datasource.dart';
import '../../data/repositories/audio_repository_impl.dart';
import '../../domain/repositories/audio_repository.dart';
import '../../domain/usecases/start_recording.dart';
import '../../domain/usecases/stop_recording.dart';

part 'audio_providers.g.dart';

/// Provider for AudioRecorderDataSource (singleton).
@riverpod
AudioRecorderDataSource audioRecorderDataSource(Ref ref) {
  final dataSource = AudioRecorderDataSourceImpl();

  // Dispose when no longer needed
  ref.onDispose(() {
    dataSource.dispose();
  });

  return dataSource;
}

/// Provider for AudioRepository.
@riverpod
AudioRepository audioRepository(Ref ref) {
  final dataSource = ref.watch(audioRecorderDataSourceProvider);
  return AudioRepositoryImpl(dataSource);
}

/// Provider for StartRecording use case.
@riverpod
StartRecording startRecording(Ref ref) {
  final repository = ref.watch(audioRepositoryProvider);
  return StartRecording(repository);
}

/// Provider for StopRecording use case.
@riverpod
StopRecording stopRecording(Ref ref) {
  final repository = ref.watch(audioRepositoryProvider);
  return StopRecording(repository);
}
