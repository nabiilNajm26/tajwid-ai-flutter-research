// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature_vector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeatureVector _$FeatureVectorFromJson(Map<String, dynamic> json) {
  return _FeatureVector.fromJson(json);
}

/// @nodoc
mixin _$FeatureVector {
  /// MFCC coefficients (20 dimensions)
  ///
  /// Mel-frequency cepstral coefficients representing spectral envelope.
  List<double> get mfcc => throw _privateConstructorUsedError;

  /// Delta (first derivative) of MFCC (20 dimensions)
  ///
  /// Captures temporal dynamics of MFCC features.
  List<double> get delta => throw _privateConstructorUsedError;

  /// Delta-delta (second derivative) of MFCC (20 dimensions)
  ///
  /// Captures acceleration of spectral changes.
  List<double> get deltaDelta => throw _privateConstructorUsedError;

  /// Audio file path this vector was extracted from
  String get sourceAudioPath => throw _privateConstructorUsedError;

  /// Extraction timestamp
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this FeatureVector to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeatureVector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeatureVectorCopyWith<FeatureVector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureVectorCopyWith<$Res> {
  factory $FeatureVectorCopyWith(
    FeatureVector value,
    $Res Function(FeatureVector) then,
  ) = _$FeatureVectorCopyWithImpl<$Res, FeatureVector>;
  @useResult
  $Res call({
    List<double> mfcc,
    List<double> delta,
    List<double> deltaDelta,
    String sourceAudioPath,
    DateTime timestamp,
  });
}

/// @nodoc
class _$FeatureVectorCopyWithImpl<$Res, $Val extends FeatureVector>
    implements $FeatureVectorCopyWith<$Res> {
  _$FeatureVectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeatureVector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mfcc = null,
    Object? delta = null,
    Object? deltaDelta = null,
    Object? sourceAudioPath = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            mfcc:
                null == mfcc
                    ? _value.mfcc
                    : mfcc // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            delta:
                null == delta
                    ? _value.delta
                    : delta // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            deltaDelta:
                null == deltaDelta
                    ? _value.deltaDelta
                    : deltaDelta // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            sourceAudioPath:
                null == sourceAudioPath
                    ? _value.sourceAudioPath
                    : sourceAudioPath // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeatureVectorImplCopyWith<$Res>
    implements $FeatureVectorCopyWith<$Res> {
  factory _$$FeatureVectorImplCopyWith(
    _$FeatureVectorImpl value,
    $Res Function(_$FeatureVectorImpl) then,
  ) = __$$FeatureVectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<double> mfcc,
    List<double> delta,
    List<double> deltaDelta,
    String sourceAudioPath,
    DateTime timestamp,
  });
}

/// @nodoc
class __$$FeatureVectorImplCopyWithImpl<$Res>
    extends _$FeatureVectorCopyWithImpl<$Res, _$FeatureVectorImpl>
    implements _$$FeatureVectorImplCopyWith<$Res> {
  __$$FeatureVectorImplCopyWithImpl(
    _$FeatureVectorImpl _value,
    $Res Function(_$FeatureVectorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeatureVector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mfcc = null,
    Object? delta = null,
    Object? deltaDelta = null,
    Object? sourceAudioPath = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$FeatureVectorImpl(
        mfcc:
            null == mfcc
                ? _value._mfcc
                : mfcc // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        delta:
            null == delta
                ? _value._delta
                : delta // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        deltaDelta:
            null == deltaDelta
                ? _value._deltaDelta
                : deltaDelta // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        sourceAudioPath:
            null == sourceAudioPath
                ? _value.sourceAudioPath
                : sourceAudioPath // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureVectorImpl implements _FeatureVector {
  const _$FeatureVectorImpl({
    required final List<double> mfcc,
    required final List<double> delta,
    required final List<double> deltaDelta,
    required this.sourceAudioPath,
    required this.timestamp,
  }) : _mfcc = mfcc,
       _delta = delta,
       _deltaDelta = deltaDelta;

  factory _$FeatureVectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureVectorImplFromJson(json);

  /// MFCC coefficients (20 dimensions)
  ///
  /// Mel-frequency cepstral coefficients representing spectral envelope.
  final List<double> _mfcc;

  /// MFCC coefficients (20 dimensions)
  ///
  /// Mel-frequency cepstral coefficients representing spectral envelope.
  @override
  List<double> get mfcc {
    if (_mfcc is EqualUnmodifiableListView) return _mfcc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mfcc);
  }

  /// Delta (first derivative) of MFCC (20 dimensions)
  ///
  /// Captures temporal dynamics of MFCC features.
  final List<double> _delta;

  /// Delta (first derivative) of MFCC (20 dimensions)
  ///
  /// Captures temporal dynamics of MFCC features.
  @override
  List<double> get delta {
    if (_delta is EqualUnmodifiableListView) return _delta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_delta);
  }

  /// Delta-delta (second derivative) of MFCC (20 dimensions)
  ///
  /// Captures acceleration of spectral changes.
  final List<double> _deltaDelta;

  /// Delta-delta (second derivative) of MFCC (20 dimensions)
  ///
  /// Captures acceleration of spectral changes.
  @override
  List<double> get deltaDelta {
    if (_deltaDelta is EqualUnmodifiableListView) return _deltaDelta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deltaDelta);
  }

  /// Audio file path this vector was extracted from
  @override
  final String sourceAudioPath;

  /// Extraction timestamp
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'FeatureVector(mfcc: $mfcc, delta: $delta, deltaDelta: $deltaDelta, sourceAudioPath: $sourceAudioPath, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureVectorImpl &&
            const DeepCollectionEquality().equals(other._mfcc, _mfcc) &&
            const DeepCollectionEquality().equals(other._delta, _delta) &&
            const DeepCollectionEquality().equals(
              other._deltaDelta,
              _deltaDelta,
            ) &&
            (identical(other.sourceAudioPath, sourceAudioPath) ||
                other.sourceAudioPath == sourceAudioPath) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_mfcc),
    const DeepCollectionEquality().hash(_delta),
    const DeepCollectionEquality().hash(_deltaDelta),
    sourceAudioPath,
    timestamp,
  );

  /// Create a copy of FeatureVector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureVectorImplCopyWith<_$FeatureVectorImpl> get copyWith =>
      __$$FeatureVectorImplCopyWithImpl<_$FeatureVectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureVectorImplToJson(this);
  }
}

abstract class _FeatureVector implements FeatureVector {
  const factory _FeatureVector({
    required final List<double> mfcc,
    required final List<double> delta,
    required final List<double> deltaDelta,
    required final String sourceAudioPath,
    required final DateTime timestamp,
  }) = _$FeatureVectorImpl;

  factory _FeatureVector.fromJson(Map<String, dynamic> json) =
      _$FeatureVectorImpl.fromJson;

  /// MFCC coefficients (20 dimensions)
  ///
  /// Mel-frequency cepstral coefficients representing spectral envelope.
  @override
  List<double> get mfcc;

  /// Delta (first derivative) of MFCC (20 dimensions)
  ///
  /// Captures temporal dynamics of MFCC features.
  @override
  List<double> get delta;

  /// Delta-delta (second derivative) of MFCC (20 dimensions)
  ///
  /// Captures acceleration of spectral changes.
  @override
  List<double> get deltaDelta;

  /// Audio file path this vector was extracted from
  @override
  String get sourceAudioPath;

  /// Extraction timestamp
  @override
  DateTime get timestamp;

  /// Create a copy of FeatureVector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeatureVectorImplCopyWith<_$FeatureVectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
