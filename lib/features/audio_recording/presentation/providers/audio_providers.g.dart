// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioRecorderDataSourceHash() =>
    r'1c78550d7c31a3d3ba1ec3cdbfb7f1dc82aa6c5a';

/// Provider for AudioRecorderDataSource (singleton).
///
/// IMPORTANT: keepAlive to maintain state during recording session
///
/// Copied from [audioRecorderDataSource].
@ProviderFor(audioRecorderDataSource)
final audioRecorderDataSourceProvider =
    Provider<AudioRecorderDataSource>.internal(
      audioRecorderDataSource,
      name: r'audioRecorderDataSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$audioRecorderDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AudioRecorderDataSourceRef = ProviderRef<AudioRecorderDataSource>;
String _$audioRepositoryHash() => r'17567abd44f0529876fb9767dcb535e0b5c7421d';

/// Provider for AudioRepository.
///
/// Copied from [audioRepository].
@ProviderFor(audioRepository)
final audioRepositoryProvider = AutoDisposeProvider<AudioRepository>.internal(
  audioRepository,
  name: r'audioRepositoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$audioRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AudioRepositoryRef = AutoDisposeProviderRef<AudioRepository>;
String _$startRecordingHash() => r'8b04f2b78d3c0a925c9293f73d8fe23f3fd8ea85';

/// Provider for StartRecording use case.
///
/// Copied from [startRecording].
@ProviderFor(startRecording)
final startRecordingProvider = AutoDisposeProvider<StartRecording>.internal(
  startRecording,
  name: r'startRecordingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$startRecordingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StartRecordingRef = AutoDisposeProviderRef<StartRecording>;
String _$stopRecordingHash() => r'96bf36b80dda1916ffee49cb6fcb87d0b0e7c8df';

/// Provider for StopRecording use case.
///
/// Copied from [stopRecording].
@ProviderFor(stopRecording)
final stopRecordingProvider = AutoDisposeProvider<StopRecording>.internal(
  stopRecording,
  name: r'stopRecordingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$stopRecordingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StopRecordingRef = AutoDisposeProviderRef<StopRecording>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
