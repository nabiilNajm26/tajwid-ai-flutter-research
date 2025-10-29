/// Enum representing the four machine learning classifiers evaluated in the study.
///
/// Each classifier has different characteristics in terms of model size,
/// inference latency, and accuracy performance.
enum ClassifierType {
  /// Support Vector Machine (SVM) - Fastest classical ML approach
  ///
  /// Characteristics:
  /// - Model size: ~800 KB (smallest)
  /// - Expected accuracy: 79-85%
  /// - Inference latency: ~500 ms (fastest)
  /// - Strengths: Fast inference, small memory footprint
  /// - Weaknesses: Lower accuracy for complex patterns
  svm('SVM', 'Support Vector Machine', 800, 500, 82),

  /// Random Forest (RF) - Best classical ML accuracy
  ///
  /// Characteristics:
  /// - Model size: ~10-12 MB (largest)
  /// - Expected accuracy: 88-91%
  /// - Inference latency: ~1200 ms (slowest)
  /// - Strengths: High accuracy among classical ML methods
  /// - Weaknesses: Largest model size, slower inference
  randomForest('RF', 'Random Forest', 11000, 1200, 89),

  /// Multi-Layer Perceptron (MLP) - Balanced neural network
  ///
  /// Characteristics:
  /// - Model size: ~5-6 MB
  /// - Expected accuracy: 81-85%
  /// - Inference latency: ~900 ms
  /// - Strengths: Good balance between size and accuracy
  /// - Weaknesses: Moderate performance across all metrics
  mlp('MLP', 'Multi-Layer Perceptron', 5500, 900, 83),

  /// Long Short-Term Memory (LSTM) - State-of-the-art for sequential data
  ///
  /// Characteristics:
  /// - Model size: ~3-4 MB (after INT8 quantization)
  /// - Expected accuracy: 95-96%
  /// - Inference latency: ~850 ms
  /// - Strengths: Highest accuracy, captures temporal dependencies
  /// - Weaknesses: Requires more computational resources than SVM
  lstm('LSTM', 'Long Short-Term Memory', 3500, 850, 95);

  const ClassifierType(
    this.shortName,
    this.fullName,
    this.avgModelSizeKB,
    this.avgLatencyMs,
    this.avgAccuracyPercent,
  );

  /// Short name/abbreviation of the classifier
  final String shortName;

  /// Full name/description of the classifier
  final String fullName;

  /// Average model size in kilobytes (per Tajwid rule)
  final int avgModelSizeKB;

  /// Average inference latency in milliseconds
  final int avgLatencyMs;

  /// Average accuracy percentage across all Tajwid rules
  final int avgAccuracyPercent;

  /// Display name combining short and full names
  String get displayName => '$shortName ($fullName)';

  /// Get classifier description with key characteristics
  String get description {
    switch (this) {
      case ClassifierType.svm:
        return 'Fastest classical ML approach with smallest model size. '
            'Ideal for resource-constrained devices. '
            'Accuracy: $avgAccuracyPercent%, Latency: $avgLatencyMs ms';
      case ClassifierType.randomForest:
        return 'Best classical ML accuracy with ensemble learning. '
            'Requires more storage but provides reliable predictions. '
            'Accuracy: $avgAccuracyPercent%, Latency: $avgLatencyMs ms';
      case ClassifierType.mlp:
        return 'Balanced neural network with moderate performance. '
            'Good compromise between size, speed, and accuracy. '
            'Accuracy: $avgAccuracyPercent%, Latency: $avgLatencyMs ms';
      case ClassifierType.lstm:
        return 'State-of-the-art accuracy for sequential audio data. '
            'Captures temporal dependencies in Tajwid pronunciation. '
            'Accuracy: $avgAccuracyPercent%, Latency: $avgLatencyMs ms';
    }
  }

  /// Get model size in megabytes with 2 decimal places
  double get modelSizeMB => avgModelSizeKB / 1024.0;

  /// Check if classifier meets performance targets
  bool get meetsPerformanceTargets =>
      avgAccuracyPercent >= 85 && avgLatencyMs <= 2000;

  /// Get latency in seconds with 2 decimal places
  double get latencySeconds => avgLatencyMs / 1000.0;
}
