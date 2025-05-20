// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameCategory _$GameCategoryFromJson(Map json) => GameCategory(
  gameInfoList:
      (json['gameInfoList'] as List<dynamic>?)
          ?.map(
            (e) => GameInfoList.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList() ??
      [],
  gameKey: json['gameKey'] as String? ?? '',
);

Map<String, dynamic> _$GameCategoryToJson(GameCategory instance) =>
    <String, dynamic>{
      'gameInfoList': instance.gameInfoList,
      'gameKey': instance.gameKey,
    };

GameInfoList _$GameInfoListFromJson(Map json) => GameInfoList(
  code: json['code'] as String,
  detail:
      (json['detail'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList() ??
      [],
);

Map<String, dynamic> _$GameInfoListToJson(GameInfoList instance) =>
    <String, dynamic>{'code': instance.code, 'detail': instance.detail};

Detail _$DetailFromJson(Map json) => Detail(
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

GamePlatformModel _$GamePlatformModelFromJson(Map json) => GamePlatformModel(
  badge: json['badge'] as String,
  badgeBgColor: json['badgeBgColor'] as String,
  badgeTextColor: json['badgeTextColor'] as String,
  bigPictureFlag: json['bigPictureFlag'],
  exCode: json['exCode'] as String,
  flag: (json['flag'] as num).toInt(),
  forYouRecBadge: json['forYouRecBadge'] as String,
  forYouRecDesc: json['forYouRecDesc'] as String,
  gameDesc: json['gameDesc'] as String,
  gameFree: (json['gameFree'] as num).toInt(),
  gameHotValue: json['gameHotValue'] as String,
  gameId: json['gameId'] as String,
  gameImage: json['gameImage'] as String,
  gameImageBig: json['gameImageBig'] as String,
  gameImageBigNew: json['gameImageBigNew'] as String,
  gameImageBigNewPlayerFlag: (json['gameImageBigNewPlayerFlag'] as num).toInt(),
  gameImageLive: json['gameImageLive'] as String,
  gameImageNew: json['gameImageNew'] as String,
  gameImageNewPlayerFlag: (json['gameImageNewPlayerFlag'] as num).toInt(),
  gameKind: json['gameKind'] as String,
  gameName: json['gameName'] as String,
  gameNameEn: json['gameNameEn'],
  gamePreImage: json['gamePreImage'] as String,
  gameType: (json['gameType'] as num).toInt(),
  gdGameId: json['gdGameId'] as String,
  historyRec: json['historyRec'] as bool,
  historyRecBadge: json['historyRecBadge'] as String,
  historyRecDesc: json['historyRecDesc'] as String,
  historyRecSort: json['historyRecSort'],
  hotFlag: (json['hotFlag'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  isFavorite: json['isFavorite'],
  isGlbr: (json['isGlbr'] as num).toInt(),
  isUpHot: json['isUpHot'],
  jackpotId: json['jackpotId'] as String,
  jackpotValue: json['jackpotValue'],
  jsonParam: json['jsonParam'] as String,
  localFlag: (json['localFlag'] as num).toInt(),
  maintenanceFlag: (json['maintenanceFlag'] as num).toInt(),
  maxWinMultiple: (json['maxWinMultiple'] as num).toInt(),
  newFlag: (json['newFlag'] as num).toInt(),
  payLine: (json['payLine'] as num).toInt(),
  payoutFlag: (json['payoutFlag'] as num).toInt(),
  pictureFlag: json['pictureFlag'],
  platformCode: json['platformCode'] as String,
  platformId: json['platformId'] as String,
  platformName: json['platformName'] as String,
  playerType: (json['playerType'] as num).toInt(),
  poolFlag: (json['poolFlag'] as num).toInt(),
  popularity: (json['popularity'] as num).toInt(),
  preferenceFlag: (json['preferenceFlag'] as num).toInt(),
  publishDate: DateTime.parse(json['publishDate'] as String),
  recommendFlag: (json['recommendFlag'] as num).toInt(),
  rtp: json['rtp'] as String,
  serverGameId: json['serverGameId'] as String,
  showArea: (json['showArea'] as num).toInt(),
  sortNo: (json['sortNo'] as num).toInt(),
  tryFlag: (json['tryFlag'] as num).toInt(),
  typeUrl: json['typeUrl'] as String,
);

Map<String, dynamic> _$GamePlatformModelToJson(GamePlatformModel instance) =>
    <String, dynamic>{
      'badge': instance.badge,
      'badgeBgColor': instance.badgeBgColor,
      'badgeTextColor': instance.badgeTextColor,
      'bigPictureFlag': instance.bigPictureFlag,
      'exCode': instance.exCode,
      'flag': instance.flag,
      'forYouRecBadge': instance.forYouRecBadge,
      'forYouRecDesc': instance.forYouRecDesc,
      'gameDesc': instance.gameDesc,
      'gameFree': instance.gameFree,
      'gameHotValue': instance.gameHotValue,
      'gameId': instance.gameId,
      'gameImage': instance.gameImage,
      'gameImageBig': instance.gameImageBig,
      'gameImageBigNew': instance.gameImageBigNew,
      'gameImageBigNewPlayerFlag': instance.gameImageBigNewPlayerFlag,
      'gameImageLive': instance.gameImageLive,
      'gameImageNew': instance.gameImageNew,
      'gameImageNewPlayerFlag': instance.gameImageNewPlayerFlag,
      'gameKind': instance.gameKind,
      'gameName': instance.gameName,
      'gameNameEn': instance.gameNameEn,
      'gamePreImage': instance.gamePreImage,
      'gameType': instance.gameType,
      'gdGameId': instance.gdGameId,
      'historyRec': instance.historyRec,
      'historyRecBadge': instance.historyRecBadge,
      'historyRecDesc': instance.historyRecDesc,
      'historyRecSort': instance.historyRecSort,
      'hotFlag': instance.hotFlag,
      'id': instance.id,
      'isFavorite': instance.isFavorite,
      'isGlbr': instance.isGlbr,
      'isUpHot': instance.isUpHot,
      'jackpotId': instance.jackpotId,
      'jackpotValue': instance.jackpotValue,
      'jsonParam': instance.jsonParam,
      'localFlag': instance.localFlag,
      'maintenanceFlag': instance.maintenanceFlag,
      'maxWinMultiple': instance.maxWinMultiple,
      'newFlag': instance.newFlag,
      'payLine': instance.payLine,
      'payoutFlag': instance.payoutFlag,
      'pictureFlag': instance.pictureFlag,
      'platformCode': instance.platformCode,
      'platformId': instance.platformId,
      'platformName': instance.platformName,
      'playerType': instance.playerType,
      'poolFlag': instance.poolFlag,
      'popularity': instance.popularity,
      'preferenceFlag': instance.preferenceFlag,
      'publishDate': instance.publishDate.toIso8601String(),
      'recommendFlag': instance.recommendFlag,
      'rtp': instance.rtp,
      'serverGameId': instance.serverGameId,
      'showArea': instance.showArea,
      'sortNo': instance.sortNo,
      'tryFlag': instance.tryFlag,
      'typeUrl': instance.typeUrl,
    };
