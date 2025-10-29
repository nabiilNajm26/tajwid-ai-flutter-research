// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AudioData _$AudioDataFromJson(Map<String, dynamic> json) {
  return _AudioData.fromJson(json);
}

/// @nodoc
mixin _$AudioData {
  /// Absolute path to the audio file
  String get filePath => throw _privateConstructorUsedError;

  /// Duration of the recording in milliseconds
  int get durationMs => throw _privateConstructorUsedError;

  /// Audio sample rate in Hz (e.g., 16000 for 16kHz)
  int get sampleRate => throw _privateConstructorUsedError;

  /// File size in bytes
  int get fileSizeBytes => throw _privateConstructorUsedError;

  /// Timestamp when the recording was created
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Optional: Tajwid rule being evaluated (set later during inference)
  String? get tajwidRuleId => throw _privateConstructorUsedError;

  /// Optional: Additional metadata (e.g., device info, recording quality)
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  /// Serializes this AudioData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioDataCopyWith<AudioData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioDataCopyWith<$Res> {
  factory $AudioDataCopyWith(AudioData value, $Res Function(AudioData) then) =
      _$AudioDataCopyWithImpl<$Res, AudioData>;
  @useResult
  $Res call({
    String filePath,
    int durationMs,
    int sampleRate,
    int fileSizeBytes,
    DateTime timestamp,
    String? tajwidRuleId,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class _$AudioDataCopyWithImpl<$Res, $Val extends AudioData>
    implements $AudioDataCopyWith<$Res> {
  _$AudioDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? durationMs = null,
    Object? sampleRate = null,
    Object? fileSizeBytes = null,
    Object? timestamp = null,
    Object? tajwidRuleId = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _value.copyWith(
            filePath:
                null == filePath
                    ? _value.filePath
                    : filePath // ignore: cast_nullable_to_non_nullable
                        as String,
            durationMs:
                null == durationMs
                    ? _value.durationMs
                    : durationMs // ignore: cast_nullable_to_non_nullable
                        as int,
            sampleRate:
                null == sampleRate
                    ? _value.sampleRate
                    : sampleRate // ignore: cast_nullable_to_non_nullable
                        as int,
            fileSizeBytes:
                null == fileSizeBytes
                    ? _value.fileSizeBytes
                    : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                        as int,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            tajwidRuleId:
                freezed == tajwidRuleId
                    ? _value.tajwidRuleId
                    : tajwidRuleId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AudioDataImplCopyWith<$Res>
    implements $AudioDataCopyWith<$Res> {
  factory _$$AudioDataImplCopyWith(
    _$AudioDataImpl value,
    $Res Function(_$AudioDataImpl) then,
  ) = __$$AudioDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String filePath,
    int durationMs,
    int sampleRate,
    int fileSizeBytes,
    DateTime timestamp,
    String? tajwidRuleId,
    Map<String, dynamic>? metadata,
  });
}

/// @nodoc
class __$$AudioDataImplCopyWithImpl<$Res>
    extends _$AudioDataCopyWithImpl<$Res, _$AudioDataImpl>
    implements _$$AudioDataImplCopyWith<$Res> {
  __$$AudioDataImplCopyWithImpl(
    _$AudioDataImpl _value,
    $Res Function(_$AudioDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? durationMs = null,
    Object? sampleRate = null,
    Object? fileSizeBytes = null,
    Object? timestamp = null,
    Object? tajwidRuleId = freezed,
    Object? metadata = freezed,
  }) {
    return _then(
      _$AudioDataImpl(
        filePath:
            null == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                    as String,
        durationMs:
            null == durationMs
                ? _value.durationMs
                : durationMs // ignore: cast_nullable_to_non_nullable
                    as int,
        sampleRate:
            null == sampleRate
                ? _value.sampleRate
                : sampleRate // ignore: cast_nullable_to_non_nullable
                    as int,
        fileSizeBytes:
            null == fileSizeBytes
                ? _value.fileSizeBytes
                : fileSizeBytes // ignore: cast_nullable_to_non_nullable
                    as int,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        tajwidRuleId:
            freezed == tajwidRuleId
                ? _value.tajwidRuleId
                : tajwidRuleId // ignore: cast_nullable_to_non_nullable
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
class _$AudioDataImpl extends _AudioData {
  const _$AudioDataImpl({
    required this.filePath,
    required this.durationMs,
    required this.sampleRate,
    required this.fileSizeBytes,
    required this.timestamp,
    this.tajwidRuleId,
    final Map<String, dynamic>? metadata,
  }) : _metadata = metadata,
       super._();

  factory _$AudioDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioDataImplFromJson(json);

  /// Absolute path to the audio file
  @override
  final String filePath;

  /// Duration of the recording in milliseconds
  @override
  final int durationMs;

  /// Audio sample rate in Hz (e.g., 16000 for 16kHz)
  @override
  final int sampleRate;

  /// File size in bytes
  @override
  final int fileSizeBytes;

  /// Timestamp when the recording was created
  @override
  final DateTime timestamp;

  /// Optional: Tajwid rule being evaluated (set later during inference)
  @override
  final String? tajwidRuleId;

  /// Optional: Additional metadata (e.g., device info, recording quality)
  final Map<String, dynamic>? _metadata;

  /// Optional: Additional metadata (e.g., device info, recording quality)
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
    return 'AudioData(filePath: $filePath, durationMs: $durationMs, sampleRate: $sampleRate, fileSizeBytes: $fileSizeBytes, timestamp: $timestamp, tajwidRuleId: $tajwidRuleId, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioDataImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate) &&
            (identical(other.fileSizeBytes, fileSizeBytes) ||
                other.fileSizeBytes == fileSizeBytes) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.tajwidRuleId, tajwidRuleId) ||
                other.tajwidRuleId == tajwidRuleId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    filePath,
    durationMs,
    sampleRate,
    fileSizeBytes,
    timestamp,
    tajwidRuleId,
    const DeepCollectionEquality().hash(_metadata),
  );

  /// Create a copy of AudioData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioDataImplCopyWith<_$AudioDataImpl> get copyWith =>
      __$$AudioDataImplCopyWithImpl<_$AudioDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioDataImplToJson(this);
  }
}

abstract class _AudioData extends AudioData {
  const factory _AudioData({
    required final String filePath,
    required final int durationMs,
    required final int sampleRate,
    required final int fileSizeBytes,
    required final DateTime timestamp,
    final String? tajwidRuleId,
    final Map<String, dynamic>? metadata,
  }) = _$AudioDataImpl;
  const _AudioData._() : super._();

  factory _AudioData.fromJson(Map<String, dynamic> json) =
      _$AudioDataImpl.fromJson;

  /// Absolute path to the audio file
  @override
  String get filePath;

  /// Duration of the recording in milliseconds
  @override
  int get durationMs;

  /// Audio sample rate in Hz (e.g., 16000 for 16kHz)
  @override
  int get sampleRate;

  /// File size in bytes
  @override
  int get fileSizeBytes;

  /// Timestamp when the recording was created
  @override
  DateTime get timestamp;

  /// Optional: Tajwid rule being evaluated (set later during inference)
  @override
  String? get tajwidRuleId;

  /// Optional: Additional metadata (e.g., device info, recording quality)
  @override
  Map<String, dynamic>? get metadata;

  /// Create a copy of AudioData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioDataImplCopyWith<_$AudioDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
