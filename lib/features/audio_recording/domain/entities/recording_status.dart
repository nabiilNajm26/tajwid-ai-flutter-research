/// Represents the current state of audio recording
///
/// State machine flow:
/// idle -> recording -> stopped
/// recording -> paused -> recording
/// Any state -> error
enum RecordingStatus {
  /// No recording in progress, ready to start
  idle('Idle', 'Ready to record'),

  /// Currently recording audio
  recording('Recording', 'Recording in progress'),

  /// Recording paused (not used in current implementation)
  paused('Paused', 'Recording paused'),

  /// Recording stopped, audio file saved
  stopped('Stopped', 'Recording completed'),

  /// Error occurred during recording
  error('Error', 'Recording failed');

  const RecordingStatus(this.label, this.description);

  /// Short label for UI display
  final String label;

  /// Detailed description for debugging/logging
  final String description;

  /// Check if currently recording
  bool get isRecording => this == RecordingStatus.recording;

  /// Check if can start recording (idle or stopped)
  bool get canStartRecording =>
      this == RecordingStatus.idle || this == RecordingStatus.stopped;

  /// Check if can stop recording (recording or paused)
  bool get canStopRecording =>
      this == RecordingStatus.recording || this == RecordingStatus.paused;

  /// Check if can pause recording
  bool get canPauseRecording => this == RecordingStatus.recording;

  /// Check if can resume recording
  bool get canResumeRecording => this == RecordingStatus.paused;

  /// Check if recording has completed successfully
  bool get hasCompleted => this == RecordingStatus.stopped;

  /// Check if recording encountered an error
  bool get hasError => this == RecordingStatus.error;
}
