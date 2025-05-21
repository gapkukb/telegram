import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

class LoginQO {
  String? account;
  String? password;

  LoginQO({this.account, this.password});
}

@JsonSerializable()
class PuzzleModel {
  final String repCode;
  final String? repMsg;
  final RepData repData;
  final bool success;

  PuzzleModel({
    required this.repCode,
    required this.repData,
    required this.success,
    required this.repMsg,
  });

  PuzzleModel copyWith({
    String? repCode,
    String? repMsg,
    RepData? repData,
    bool? success,
  }) => PuzzleModel(
    repCode: repCode ?? this.repCode,
    repData: repData ?? this.repData,
    success: success ?? this.success,
    repMsg: repMsg ?? this.repMsg,
  );

  factory PuzzleModel.fromJson(Map<String, dynamic> json) =>
      _$PuzzleModelFromJson(json);

  Map<String, dynamic> toJson() => _$PuzzleModelToJson(this);
}

@JsonSerializable()
class RepData {
  final String? ip;
  final String jigsawImageBase64;
  final String originalImageBase64;
  final bool? result;
  final String secretKey;
  final String token;

  RepData({
    required this.ip,
    required this.jigsawImageBase64,
    required this.originalImageBase64,
    required this.result,
    required this.secretKey,
    required this.token,
  });

  RepData copyWith({
    String? ip,
    String? jigsawImageBase64,
    String? originalImageBase64,
    bool? result,
    String? secretKey,
    String? token,
  }) => RepData(
    ip: ip ?? this.ip,
    jigsawImageBase64: jigsawImageBase64 ?? this.jigsawImageBase64,
    originalImageBase64: originalImageBase64 ?? this.originalImageBase64,
    result: result ?? this.result,
    secretKey: secretKey ?? this.secretKey,
    token: token ?? this.token,
  );

  factory RepData.fromJson(Map<String, dynamic> json) =>
      _$RepDataFromJson(json);

  Map<String, dynamic> toJson() => _$RepDataToJson(this);
}
