import 'package:freezed_annotation/freezed_annotation.dart';
import 'classifier_type.dart';
import 'tajwid_rule.dart';

part 'model_key.freezed.dart';
part 'model_key.g.dart';

/// Unique identifier for a specific TFLite model file.
///
/// Each model is identified by the combination of classifier type and Tajwid rule.
/// With 4 classifiers and 3 rules, there are 12 unique models in total.
///
/// Example model filenames:
/// - svm_madd.tflite
/// - lstm_ghunnah.tflite
/// - rf_ikhfaa.tflite
@freezed
class ModelKey with _$ModelKey {
  const factory ModelKey({
    /// The classifier type (SVM, RF, MLP, LSTM)
    required ClassifierType classifierType,

    /// The Tajwid rule (Madd, Ghunnah, Ikhfaa)
    required TajwidRule tajwidRule,
  }) = _ModelKey;

  const ModelKey._();

  factory ModelKey.fromJson(Map<String, dynamic> json) =>
      _$ModelKeyFromJson(json);

  /// Get the model filename (e.g., "svm_madd.tflite")
  String get fileName =>
      '${classifierType.name}_${tajwidRule.name}.tflite';

  /// Get the full asset path for this model
  String get assetPath => 'assets/models/$fileName';

  /// Get a human-readable display name
  String get displayName =>
      '${classifierType.shortName} - ${tajwidRule.displayName}';

  /// Get a unique string identifier (for caching, logging, etc.)
  String get uniqueId => '${classifierType.name}_${tajwidRule.name}';
}

/// Extension for creating ModelKey instances from strings
extension ModelKeyParser on String {
  /// Parse a model key from a string in format "classifier_rule"
  ///
  /// Example: "svm_madd" -> ModelKey(svm, madd)
  ModelKey? toModelKey() {
    final parts = split('_');
    if (parts.length != 2) return null;

    final classifierStr = parts[0];
    final ruleStr = parts[1];

    try {
      final classifier = ClassifierType.values.firstWhere(
        (c) => c.name == classifierStr,
      );
      final rule = TajwidRule.values.firstWhere(
        (r) => r.name == ruleStr,
      );
      return ModelKey(classifierType: classifier, tajwidRule: rule);
    } catch (_) {
      return null;
    }
  }
}

/// Helper class to generate all possible model keys
class ModelKeyGenerator {
  /// Get all 12 possible model keys (4 classifiers × 3 rules)
  static List<ModelKey> getAllModelKeys() {
    final keys = <ModelKey>[];
    for (final classifier in ClassifierType.values) {
      for (final rule in TajwidRule.values) {
        keys.add(ModelKey(classifierType: classifier, tajwidRule: rule));
      }
    }
    return keys;
  }

  /// Get all model keys for a specific classifier (3 keys)
  static List<ModelKey> getKeysForClassifier(ClassifierType classifier) {
    return TajwidRule.values
        .map((rule) => ModelKey(classifierType: classifier, tajwidRule: rule))
        .toList();
  }

  /// Get all model keys for a specific Tajwid rule (4 keys)
  static List<ModelKey> getKeysForRule(TajwidRule rule) {
    return ClassifierType.values
        .map((classifier) =>
            ModelKey(classifierType: classifier, tajwidRule: rule))
        .toList();
  }

  /// Get total number of models (always 12)
  static int get totalModelCount =>
      ClassifierType.values.length * TajwidRule.values.length;

  /// Get total expected size of all models in KB
  static int get totalExpectedSizeKB {
    int total = 0;
    for (final classifier in ClassifierType.values) {
      // Each classifier has 3 models (one per rule)
      total += classifier.avgModelSizeKB * TajwidRule.values.length;
    }
    return total;
  }

  /// Get total expected size of all models in MB
  static double get totalExpectedSizeMB => totalExpectedSizeKB / 1024.0;
}
