/// Base exception class for domain-specific errors.
///
/// These exceptions are thrown at the data layer and mapped to Failures
/// at the repository implementation.
abstract class AppException implements Exception {
  final String message;
  final dynamic cause;

  const AppException(this.message, [this.cause]);

  @override
  String toString() => 'AppException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for audio recording errors.
class AudioRecordingException extends AppException {
  const AudioRecordingException(super.message, [super.cause]);

  @override
  String toString() => 'AudioRecordingException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for feature extraction errors (MFCC).
class FeatureExtractionException extends AppException {
  const FeatureExtractionException(super.message, [super.cause]);

  @override
  String toString() => 'FeatureExtractionException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for ML inference errors.
class InferenceException extends AppException {
  const InferenceException(super.message, [super.cause]);

  @override
  String toString() => 'InferenceException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for model loading errors.
class ModelLoadException extends AppException {
  const ModelLoadException(super.message, [super.cause]);

  @override
  String toString() => 'ModelLoadException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for storage/database errors.
class StorageException extends AppException {
  const StorageException(super.message, [super.cause]);

  @override
  String toString() => 'StorageException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for network/API errors.
class NetworkException extends AppException {
  const NetworkException(super.message, [super.cause]);

  @override
  String toString() => 'NetworkException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}

/// Exception for permission errors.
class PermissionException extends AppException {
  const PermissionException(super.message, [super.cause]);

  @override
  String toString() => 'PermissionException: $message${cause != null ? ' (caused by: $cause)' : ''}';
}
