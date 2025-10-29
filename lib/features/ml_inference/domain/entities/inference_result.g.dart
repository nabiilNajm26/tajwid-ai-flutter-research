// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inference_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InferenceResultImpl _$$InferenceResultImplFromJson(
  Map<String, dynamic> json,
) => _$InferenceResultImpl(
  id: json['id'] as String,
  classifierType: $enumDecode(_$ClassifierTypeEnumMap, json['classifierType']),
  tajwidRule: $enumDecode(_$TajwidRuleEnumMap, json['tajwidRule']),
  isCorrect: json['isCorrect'] as bool,
  confidence: (json['confidence'] as num).toDouble(),
  latencyMs: (json['latencyMs'] as num).toInt(),
  modelSizeKB: (json['modelSizeKB'] as num).toInt(),
  timestamp: DateTime.parse(json['timestamp'] as String),
  audioFilePath: json['audioFilePath'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$InferenceResultImplToJson(
  _$InferenceResultImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'classifierType': _$ClassifierTypeEnumMap[instance.classifierType]!,
  'tajwidRule': _$TajwidRuleEnumMap[instance.tajwidRule]!,
  'isCorrect': instance.isCorrect,
  'confidence': instance.confidence,
  'latencyMs': instance.latencyMs,
  'modelSizeKB': instance.modelSizeKB,
  'timestamp': instance.timestamp.toIso8601String(),
  'audioFilePath': instance.audioFilePath,
  'metadata': instance.metadata,
};

const _$ClassifierTypeEnumMap = {
  ClassifierType.svm: 'svm',
  ClassifierType.randomForest: 'randomForest',
  ClassifierType.mlp: 'mlp',
  ClassifierType.lstm: 'lstm',
};

const _$TajwidRuleEnumMap = {
  TajwidRule.madd: 'madd',
  TajwidRule.ghunnah: 'ghunnah',
  TajwidRule.ikhfaa: 'ikhfaa',
};
