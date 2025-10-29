import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature_vector.freezed.dart';
part 'feature_vector.g.dart';

/// Feature vector extracted from audio for ML inference.
///
/// Contains MFCC coefficients and their derivatives (delta, delta-delta).
/// Total dimension: 60 (20 MFCC + 20 delta + 20 delta-delta)
@freezed
class FeatureVector with _$FeatureVector {
  const factory FeatureVector({
    /// MFCC coefficients (20 dimensions)
    ///
    /// Mel-frequency cepstral coefficients representing spectral envelope.
    required List<double> mfcc,

    /// Delta (first derivative) of MFCC (20 dimensions)
    ///
    /// Captures temporal dynamics of MFCC features.
    required List<double> delta,

    /// Delta-delta (second derivative) of MFCC (20 dimensions)
    ///
    /// Captures acceleration of spectral changes.
    required List<double> deltaDelta,

    /// Audio file path this vector was extracted from
    required String sourceAudioPath,

    /// Extraction timestamp
    required DateTime timestamp,
  }) = _FeatureVector;

  factory FeatureVector.fromJson(Map<String, dynamic> json) =>
      _$FeatureVectorFromJson(json);
}

/// Extension methods for FeatureVector
extension FeatureVectorX on FeatureVector {
  /// Get total dimension (should be 60)
  int get totalDimension => mfcc.length + delta.length + deltaDelta.length;

  /// Flatten to 1D array for ML model input
  ///
  /// Returns: [mfcc..., delta..., deltaDelta...]
  List<double> flatten() {
    return [...mfcc, ...delta, ...deltaDelta];
  }

  /// Validate feature vector dimensions
  ///
  /// Returns true if all arrays have expected length (20 each)
  bool get isValid {
    return mfcc.length == 20 && delta.length == 20 && deltaDelta.length == 20;
  }

  /// Get statistics for debugging
  String get statistics {
    final flat = flatten();
    final mean = flat.reduce((a, b) => a + b) / flat.length;
    final min = flat.reduce((a, b) => a < b ? a : b);
    final max = flat.reduce((a, b) => a > b ? a : b);

    return 'Dim: $totalDimension, Mean: ${mean.toStringAsFixed(3)}, '
        'Min: ${min.toStringAsFixed(3)}, Max: ${max.toStringAsFixed(3)}';
  }
}
