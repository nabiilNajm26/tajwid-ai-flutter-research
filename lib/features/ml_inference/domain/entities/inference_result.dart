import 'package:freezed_annotation/freezed_annotation.dart';
import 'classifier_type.dart';
import 'tajwid_rule.dart';

part 'inference_result.freezed.dart';
part 'inference_result.g.dart';

/// Represents the result of a single ML inference operation.
///
/// This immutable class encapsulates all information about a Tajwid evaluation,
/// including the classifier used, the rule evaluated, prediction confidence,
/// and performance metrics.
@freezed
class InferenceResult with _$InferenceResult {
  const factory InferenceResult({
    /// Unique identifier for this inference result
    required String id,

    /// The classifier that produced this result
    required ClassifierType classifierType,

    /// The Tajwid rule being evaluated
    required TajwidRule tajwidRule,

    /// Prediction: true = correct pronunciation, false = incorrect
    required bool isCorrect,

    /// Confidence score (0.0 to 1.0)
    /// Higher values indicate more confident predictions
    required double confidence,

    /// Inference latency in milliseconds
    required int latencyMs,

    /// Model size in kilobytes (actual loaded size)
    required int modelSizeKB,

    /// Timestamp when inference was performed
    required DateTime timestamp,

    /// Optional: Path to the audio file used for inference
    String? audioFilePath,

    /// Optional: Additional metadata (e.g., device info, feature extraction time)
    Map<String, dynamic>? metadata,
  }) = _InferenceResult;

  factory InferenceResult.fromJson(Map<String, dynamic> json) =>
      _$InferenceResultFromJson(json);
}

/// Extension methods for InferenceResult
extension InferenceResultX on InferenceResult {
  /// Get confidence as percentage (0-100)
  double get confidencePercent => confidence * 100;

  /// Get latency in seconds
  double get latencySeconds => latencyMs / 1000.0;

  /// Get model size in megabytes
  double get modelSizeMB => modelSizeKB / 1024.0;

  /// Get formatted confidence string
  String get confidenceFormatted => '${confidencePercent.toStringAsFixed(1)}%';

  /// Get formatted latency string
  String get latencyFormatted => '${latencyMs}ms';

  /// Get formatted model size string
  String get modelSizeFormatted => modelSizeMB >= 1
      ? '${modelSizeMB.toStringAsFixed(1)} MB'
      : '$modelSizeKB KB';

  /// Check if prediction is highly confident (>= 80%)
  bool get isHighConfidence => confidence >= 0.8;

  /// Check if latency meets target (<= 2000ms)
  bool get meetsLatencyTarget => latencyMs <= 2000;

  /// Get user-friendly result label
  String get resultLabel => isCorrect ? 'Correct' : 'Incorrect';

  /// Get summary string for display
  String get summary =>
      '${classifierType.shortName}: $resultLabel ($confidenceFormatted)';
}
