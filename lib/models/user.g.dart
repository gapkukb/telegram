// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PuzzleModel _$PuzzleModelFromJson(Map<String, dynamic> json) => PuzzleModel(
  repCode: json['repCode'] as String,
  repData: RepData.fromJson(json['repData'] as Map<String, dynamic>),
  success: json['success'] as bool,
  repMsg: json['repMsg'] as String?,
);

Map<String, dynamic> _$PuzzleModelToJson(PuzzleModel instance) =>
    <String, dynamic>{
      'repCode': instance.repCode,
      'repMsg': instance.repMsg,
      'repData': instance.repData,
      'success': instance.success,
    };

RepData _$RepDataFromJson(Map<String, dynamic> json) => RepData(
  ip: json['ip'] as String?,
  jigsawImageBase64: json['jigsawImageBase64'] as String,
  originalImageBase64: json['originalImageBase64'] as String,
  result: json['result'] as bool?,
  secretKey: json['secretKey'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$RepDataToJson(RepData instance) => <String, dynamic>{
  'ip': instance.ip,
  'jigsawImageBase64': instance.jigsawImageBase64,
  'originalImageBase64': instance.originalImageBase64,
  'result': instance.result,
  'secretKey': instance.secretKey,
  'token': instance.token,
};
