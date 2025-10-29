// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioDataImpl _$$AudioDataImplFromJson(Map<String, dynamic> json) =>
    _$AudioDataImpl(
      filePath: json['filePath'] as String,
      durationMs: (json['durationMs'] as num).toInt(),
      sampleRate: (json['sampleRate'] as num).toInt(),
      fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      tajwidRuleId: json['tajwidRuleId'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AudioDataImplToJson(_$AudioDataImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'durationMs': instance.durationMs,
      'sampleRate': instance.sampleRate,
      'fileSizeBytes': instance.fileSizeBytes,
      'timestamp': instance.timestamp.toIso8601String(),
      'tajwidRuleId': instance.tajwidRuleId,
      'metadata': instance.metadata,
    };
