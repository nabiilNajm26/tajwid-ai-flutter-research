// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelKeyImpl _$$ModelKeyImplFromJson(Map<String, dynamic> json) =>
    _$ModelKeyImpl(
      classifierType: $enumDecode(
        _$ClassifierTypeEnumMap,
        json['classifierType'],
      ),
      tajwidRule: $enumDecode(_$TajwidRuleEnumMap, json['tajwidRule']),
    );

Map<String, dynamic> _$$ModelKeyImplToJson(_$ModelKeyImpl instance) =>
    <String, dynamic>{
      'classifierType': _$ClassifierTypeEnumMap[instance.classifierType]!,
      'tajwidRule': _$TajwidRuleEnumMap[instance.tajwidRule]!,
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
