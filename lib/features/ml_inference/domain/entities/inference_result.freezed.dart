// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inference_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InferenceResult _$InferenceResultFromJson(Map<String, dynamic> json) {
  return _InferenceResult.fromJson(json);
}

/// @nodoc
mixin _$InferenceResult {
  /// Unique identifier for this inference result
  String get id => throw _privateConstructorUsedError;

  /// The classifier that produced this result
  ClassifierType get classifierType => throw _privateConstructorUsedError;

  /// The Tajwid rule being evaluated
  TajwidRule get tajwidRule => throw _privateConstructorUsedError;

  /// Prediction: true = correct pronunciation, false = incorrect
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Confidence score (0.0 to 1.0)
  /// Higher values indicate more confident predictions
  double get confidence => throw _privateConstructorUsedError;

  /// Inference latency in milliseconds
  int get latencyMs => throw _privateConstructorUsedError;

  /// Model size in kilobytes (actual loaded size)
  int get modelSizeKB => throw _privateConstructorUsedError;

  /// Timestamp when inference was performed
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Optional: Path to the audio file used for inference
  String? get audioFilePath => throw _privateConstructorUsedError;

  /// Optional: Additional metadata (e.g., device info, feature extraction time)
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this InferenceResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InferenceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InferenceResultCopyWith<InferenceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InferenceResultCopyWith<$Res> {
  factory $InferenceResultCopyWith(
    InferenceResult value,
    $Res Function(InferenceResult) then,
  ) = _$InferenceResultCopyWithImpl<$Res, InferenceResult>;
  @useResult
  $Res call({
    String id,
    ClassifierType classifierType,
    TajwidRule tajwidRule,
    bool isCorrect,
    double confidence,
    int latencyMs,
    int modelSizeKB,
    DateTime timestamp,
    String? audioFilePath,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$InferenceResultCopyWithImpl<$Res, $Val extends InferenceResult>
    implements $InferenceResultCopyWith<$Res> {
  _$InferenceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InferenceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classifierType = null,
    Object? tajwidRule = null,
    Object? isCorrect = null,
    Object? confidence = null,
    Object? latencyMs = null,
    Object? modelSizeKB = null,
    Object? timestamp = null,
    Object? audioFilePath = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            classifierType:
                null == classifierType
                    ? _value.classifierType
                    : classifierType // ignore: cast_nullable_to_non_nullable
                        as ClassifierType,
            tajwidRule:
                null == tajwidRule
                    ? _value.tajwidRule
                    : tajwidRule // ignore: cast_nullable_to_non_nullable
                        as TajwidRule,
            isCorrect:
                null == isCorrect
                    ? _value.isCorrect
                    : isCorrect // ignore: cast_nullable_to_non_nullable
                        as bool,
            confidence:
                null == confidence
                    ? _value.confidence
                    : confidence // ignore: cast_nullable_to_non_nullable
                        as double,
            latencyMs:
                null == latencyMs
                    ? _value.latencyMs
                    : latencyMs // ignore: cast_nullable_to_non_nullable
                        as int,
            modelSizeKB:
                null == modelSizeKB
                    ? _value.modelSizeKB
                    : modelSizeKB // ignore: cast_nullable_to_non_nullable
                        as int,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            audioFilePath:
                freezed == audioFilePath
                    ? _value.audioFilePath
                    : audioFilePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InferenceResultImplCopyWith<$Res>
    implements $InferenceResultCopyWith<$Res> {
  factory _$$InferenceResultImplCopyWith(
    _$InferenceResultImpl value,
    $Res Function(_$InferenceResultImpl) then,
  ) = __$$InferenceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    ClassifierType classifierType,
    TajwidRule tajwidRule,
    bool isCorrect,
    double confidence,
    int latencyMs,
    int modelSizeKB,
    DateTime timestamp,
    String? audioFilePath,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$InferenceResultImplCopyWithImpl<$Res>
    extends _$InferenceResultCopyWithImpl<$Res, _$InferenceResultImpl>
    implements _$$InferenceResultImplCopyWith<$Res> {
  __$$InferenceResultImplCopyWithImpl(
    _$InferenceResultImpl _value,
    $Res Function(_$InferenceResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InferenceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classifierType = null,
    Object? tajwidRule = null,
    Object? isCorrect = null,
    Object? confidence = null,
    Object? latencyMs = null,
    Object? modelSizeKB = null,
    Object? timestamp = null,
    Object? audioFilePath = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$InferenceResultImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        classifierType:
            null == classifierType
                ? _value.classifierType
                : classifierType // ignore: cast_nullable_to_non_nullable
                    as ClassifierType,
        tajwidRule:
            null == tajwidRule
                ? _value.tajwidRule
                : tajwidRule // ignore: cast_nullable_to_non_nullable
                    as TajwidRule,
        isCorrect:
            null == isCorrect
                ? _value.isCorrect
                : isCorrect // ignore: cast_nullable_to_non_nullable
                    as bool,
        confidence:
            null == confidence
                ? _value.confidence
                : confidence // ignore: cast_nullable_to_non_nullable
                    as double,
        latencyMs:
            null == latencyMs
                ? _value.latencyMs
                : latencyMs // ignore: cast_nullable_to_non_nullable
                    as int,
        modelSizeKB:
            null == modelSizeKB
                ? _value.modelSizeKB
                : modelSizeKB // ignore: cast_nullable_to_non_nullable
                    as int,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        audioFilePath:
            freezed == audioFilePath
                ? _value.audioFilePath
                : audioFilePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InferenceResultImpl implements _InferenceResult {
  const _$InferenceResultImpl({
    required this.id,
    required this.classifierType,
    required this.tajwidRule,
    required this.isCorrect,
    required this.confidence,
    required this.latencyMs,
    required this.modelSizeKB,
    required this.timestamp,
    this.audioFilePath,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata;

  factory _$InferenceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InferenceResultImplFromJson(json);

  /// Unique identifier for this inference result
  @override
  final String id;

  /// The classifier that produced this result
  @override
  final ClassifierType classifierType;

  /// The Tajwid rule being evaluated
  @override
  final TajwidRule tajwidRule;

  /// Prediction: true = correct pronunciation, false = incorrect
  @override
  final bool isCorrect;

  /// Confidence score (0.0 to 1.0)
  /// Higher values indicate more confident predictions
  @override
  final double confidence;

  /// Inference latency in milliseconds
  @override
  final int latencyMs;

  /// Model size in kilobytes (actual loaded size)
  @override
  final int modelSizeKB;

  /// Timestamp when inference was performed
  @override
  final DateTime timestamp;

  /// Optional: Path to the audio file used for inference
  @override
  final String? audioFilePath;

  /// Optional: Additional metadata (e.g., device info, feature extraction time)
  final Map<String, dynamic>? _metadata;

  /// Optional: Additional metadata (e.g., device info, feature extraction time)
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'InferenceResult(id: $id, classifierType: $classifierType, tajwidRule: $tajwidRule, isCorrect: $isCorrect, confidence: $confidence, latencyMs: $latencyMs, modelSizeKB: $modelSizeKB, timestamp: $timestamp, audioFilePath: $audioFilePath, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InferenceResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classifierType, classifierType) ||
                other.classifierType == classifierType) &&
            (identical(other.tajwidRule, tajwidRule) ||
                other.tajwidRule == tajwidRule) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.latencyMs, latencyMs) ||
                other.latencyMs == latencyMs) &&
            (identical(other.modelSizeKB, modelSizeKB) ||
                other.modelSizeKB == modelSizeKB) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.audioFilePath, audioFilePath) ||
                other.audioFilePath == audioFilePath) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    classifierType,
    tajwidRule,
    isCorrect,
    confidence,
    latencyMs,
    modelSizeKB,
    timestamp,
    audioFilePath,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of InferenceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InferenceResultImplCopyWith<_$InferenceResultImpl> get copyWith =>
      __$$InferenceResultImplCopyWithImpl<_$InferenceResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InferenceResultImplToJson(this);
  }
}

abstract class _InferenceResult implements InferenceResult {
  const factory _InferenceResult({
    required final String id,
    required final ClassifierType classifierType,
    required final TajwidRule tajwidRule,
    required final bool isCorrect,
    required final double confidence,
    required final int latencyMs,
    required final int modelSizeKB,
    required final DateTime timestamp,
    final String? audioFilePath,
    final Map<String, dynamic>? metadata,
  }) = _$InferenceResultImpl;

  factory _InferenceResult.fromJson(Map<String, dynamic> json) =
      _$InferenceResultImpl.fromJson;

  /// Unique identifier for this inference result
  @override
  String get id;

  /// The classifier that produced this result
  @override
  ClassifierType get classifierType;

  /// The Tajwid rule being evaluated
  @override
  TajwidRule get tajwidRule;

  /// Prediction: true = correct pronunciation, false = incorrect
  @override
  bool get isCorrect;

  /// Confidence score (0.0 to 1.0)
  /// Higher values indicate more confident predictions
  @override
  double get confidence;

  /// Inference latency in milliseconds
  @override
  int get latencyMs;

  /// Model size in kilobytes (actual loaded size)
  @override
  int get modelSizeKB;

  /// Timestamp when inference was performed
  @override
  DateTime get timestamp;

  /// Optional: Path to the audio file used for inference
  @override
  String? get audioFilePath;

  /// Optional: Additional metadata (e.g., device info, feature extraction time)
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of InferenceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InferenceResultImplCopyWith<_$InferenceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
