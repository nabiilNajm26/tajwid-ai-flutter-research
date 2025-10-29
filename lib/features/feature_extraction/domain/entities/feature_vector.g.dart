// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_vector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeatureVectorImpl _$$FeatureVectorImplFromJson(Map<String, dynamic> json) =>
    _$FeatureVectorImpl(
      mfcc:
          (json['mfcc'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      delta:
          (json['delta'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      deltaDelta:
          (json['deltaDelta'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      sourceAudioPath: json['sourceAudioPath'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$FeatureVectorImplToJson(_$FeatureVectorImpl instance) =>
    <String, dynamic>{
      'mfcc': instance.mfcc,
      'delta': instance.delta,
      'deltaDelta': instance.deltaDelta,
      'sourceAudioPath': instance.sourceAudioPath,
      'timestamp': instance.timestamp.toIso8601String(),
    };
