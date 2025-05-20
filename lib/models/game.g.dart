// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameCategory _$GameCategoryFromJson(Map<String, dynamic> json) => GameCategory(
  gameInfoList:
      (json['gameInfoList'] as List<dynamic>?)
          ?.map((e) => GameInfoList.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  gameKey: json['gameKey'] as String? ?? '',
);

Map<String, dynamic> _$GameCategoryToJson(GameCategory instance) =>
    <String, dynamic>{
      'gameInfoList': instance.gameInfoList,
      'gameKey': instance.gameKey,
    };

GameInfoList _$GameInfoListFromJson(Map<String, dynamic> json) => GameInfoList(
  code: json['code'] as String,
  detail:
      (json['detail'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$GameInfoListToJson(GameInfoList instance) =>
    <String, dynamic>{'code': instance.code, 'detail': instance.detail};

Detail _$DetailFromJson(Map<String, dynamic> json) => Detail(
  tabName: json['tabName'] as String,
  allFile: json['allFile'] as String?,
  pageFile: json['pageFile'] as String?,
  sort: (json['sort'] as num).toInt(),
  createAt: (json['create_at'] as num).toInt(),
  platformId: json['platformId'] as String?,
);

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
  'tabName': instance.tabName,
  'allFile': instance.allFile,
  'pageFile': instance.pageFile,
  'sort': instance.sort,
  'create_at': instance.createAt,
  'platformId': instance.platformId,
};
