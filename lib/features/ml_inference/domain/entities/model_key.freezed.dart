// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ModelKey _$ModelKeyFromJson(Map<String, dynamic> json) {
  return _ModelKey.fromJson(json);
}

/// @nodoc
mixin _$ModelKey {
  /// The classifier type (SVM, RF, MLP, LSTM)
  ClassifierType get classifierType => throw _privateConstructorUsedError;

  /// The Tajwid rule (Madd, Ghunnah, Ikhfaa)
  TajwidRule get tajwidRule => throw _privateConstructorUsedError;

  /// Serializes this ModelKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelKeyCopyWith<ModelKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelKeyCopyWith<$Res> {
  factory $ModelKeyCopyWith(ModelKey value, $Res Function(ModelKey) then) =
      _$ModelKeyCopyWithImpl<$Res, ModelKey>;
  @useResult
  $Res call({ClassifierType classifierType, TajwidRule tajwidRule});
}

/// @nodoc
class _$ModelKeyCopyWithImpl<$Res, $Val extends ModelKey>
    implements $ModelKeyCopyWith<$Res> {
  _$ModelKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classifierType = null, Object? tajwidRule = null}) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ModelKeyImplCopyWith<$Res>
    implements $ModelKeyCopyWith<$Res> {
  factory _$$ModelKeyImplCopyWith(
    _$ModelKeyImpl value,
    $Res Function(_$ModelKeyImpl) then,
  ) = __$$ModelKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClassifierType classifierType, TajwidRule tajwidRule});
}

/// @nodoc
class __$$ModelKeyImplCopyWithImpl<$Res>
    extends _$ModelKeyCopyWithImpl<$Res, _$ModelKeyImpl>
    implements _$$ModelKeyImplCopyWith<$Res> {
  __$$ModelKeyImplCopyWithImpl(
    _$ModelKeyImpl _value,
    $Res Function(_$ModelKeyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ModelKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classifierType = null, Object? tajwidRule = null}) {
    return _then(
      _$ModelKeyImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelKeyImpl extends _ModelKey {
  const _$ModelKeyImpl({required this.classifierType, required this.tajwidRule})
    : super._();

  factory _$ModelKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelKeyImplFromJson(json);

  /// The classifier type (SVM, RF, MLP, LSTM)
  @override
  final ClassifierType classifierType;

  /// The Tajwid rule (Madd, Ghunnah, Ikhfaa)
  @override
  final TajwidRule tajwidRule;

  @override
  String toString() {
    return 'ModelKey(classifierType: $classifierType, tajwidRule: $tajwidRule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelKeyImpl &&
            (identical(other.classifierType, classifierType) ||
                other.classifierType == classifierType) &&
            (identical(other.tajwidRule, tajwidRule) ||
                other.tajwidRule == tajwidRule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classifierType, tajwidRule);

  /// Create a copy of ModelKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelKeyImplCopyWith<_$ModelKeyImpl> get copyWith =>
      __$$ModelKeyImplCopyWithImpl<_$ModelKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelKeyImplToJson(this);
  }
}

abstract class _ModelKey extends ModelKey {
  const factory _ModelKey({
    required final ClassifierType classifierType,
    required final TajwidRule tajwidRule,
  }) = _$ModelKeyImpl;
  const _ModelKey._() : super._();

  factory _ModelKey.fromJson(Map<String, dynamic> json) =
      _$ModelKeyImpl.fromJson;

  /// The classifier type (SVM, RF, MLP, LSTM)
  @override
  ClassifierType get classifierType;

  /// The Tajwid rule (Madd, Ghunnah, Ikhfaa)
  @override
  TajwidRule get tajwidRule;

  /// Create a copy of ModelKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelKeyImplCopyWith<_$ModelKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
