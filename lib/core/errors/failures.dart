abstract class Failure {
  const Failure(this.message);

  final String message;
}

class AudioRecordingFailure extends Failure {
  const AudioRecordingFailure(super.message);
}

class FeatureExtractionFailure extends Failure {
  const FeatureExtractionFailure(super.message);
}

class ModelLoadingFailure extends Failure {
  const ModelLoadingFailure(super.message);
}

class InferenceFailure extends Failure {
  const InferenceFailure(super.message);
}

class StorageFailure extends Failure {
  const StorageFailure(super.message);
}

class AudioFailure extends Failure {
  const AudioFailure(super.message);
}

class PermissionFailure extends Failure {
  const PermissionFailure(super.message);
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}
