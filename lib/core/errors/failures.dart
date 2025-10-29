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
