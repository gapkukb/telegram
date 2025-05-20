import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'game.g.dart';

@JsonSerializable()
class GameCategory {
  @JsonKey(name: "gameInfoList", defaultValue: [])
  final List<GameInfoList> gameInfoList;
  @JsonKey(name: "gameKey", defaultValue: "")
  final String gameKey;

  GameCategory({required this.gameInfoList, required this.gameKey});

  GameCategory copyWith({List<GameInfoList>? gameInfoList, String? gameKey}) =>
      GameCategory(
        gameInfoList: gameInfoList ?? this.gameInfoList,
        gameKey: gameKey ?? this.gameKey,
      );

  factory GameCategory.fromJson(Map<String, dynamic> json) =>
      _$GameCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$GameCategoryToJson(this);
}

@JsonSerializable()
class GameInfoList {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "detail", defaultValue: [])
  final List<Detail> detail;

  GameInfoList({required this.code, required this.detail});

  GameInfoList copyWith({String? code, List<Detail>? detail}) =>
      GameInfoList(code: code ?? this.code, detail: detail ?? this.detail);

  factory GameInfoList.fromJson(Map<String, dynamic> json) =>
      _$GameInfoListFromJson(json);

  Map<String, dynamic> toJson() => _$GameInfoListToJson(this);
}

@JsonSerializable()
class Detail {
  @JsonKey(name: "tabName")
  final String tabName;
  @JsonKey(name: "allFile")
  final String? allFile;
  @JsonKey(name: "pageFile")
  final String? pageFile;
  @JsonKey(name: "sort")
  final int sort;
  @JsonKey(name: "create_at")
  final int createAt;
  @JsonKey(name: "platformId")
  final String? platformId;

  Detail({
    required this.tabName,
    this.allFile,
    this.pageFile,
    required this.sort,
    required this.createAt,
    this.platformId,
  });

  Detail copyWith({
    String? tabName,
    String? allFile,
    String? pageFile,
    int? sort,
    int? createAt,
    String? platformId,
  }) => Detail(
    tabName: tabName ?? this.tabName,
    allFile: allFile ?? this.allFile,
    pageFile: pageFile ?? this.pageFile,
    sort: sort ?? this.sort,
    createAt: createAt ?? this.createAt,
    platformId: platformId ?? this.platformId,
  );

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}

@JsonSerializable()
class GamePlatformModel {
  @JsonKey(name: "badge")
  String badge;
  @JsonKey(name: "badgeBgColor")
  String badgeBgColor;
  @JsonKey(name: "badgeTextColor")
  String badgeTextColor;
  @JsonKey(name: "bigPictureFlag")
  dynamic bigPictureFlag;
  @JsonKey(name: "exCode")
  String exCode;
  @JsonKey(name: "flag")
  int flag;
  @JsonKey(name: "forYouRecBadge")
  String forYouRecBadge;
  @JsonKey(name: "forYouRecDesc")
  String forYouRecDesc;
  @JsonKey(name: "gameDesc")
  String gameDesc;
  @JsonKey(name: "gameFree")
  int gameFree;
  @JsonKey(name: "gameHotValue")
  String gameHotValue;
  @JsonKey(name: "gameId")
  String gameId;
  @JsonKey(name: "gameImage")
  String gameImage;
  @JsonKey(name: "gameImageBig")
  String gameImageBig;
  @JsonKey(name: "gameImageBigNew")
  String gameImageBigNew;
  @JsonKey(name: "gameImageBigNewPlayerFlag")
  int gameImageBigNewPlayerFlag;
  @JsonKey(name: "gameImageLive")
  String gameImageLive;
  @JsonKey(name: "gameImageNew")
  String gameImageNew;
  @JsonKey(name: "gameImageNewPlayerFlag")
  int gameImageNewPlayerFlag;
  @JsonKey(name: "gameKind")
  String gameKind;
  @JsonKey(name: "gameName")
  String gameName;
  @JsonKey(name: "gameNameEn")
  dynamic gameNameEn;
  @JsonKey(name: "gamePreImage")
  String gamePreImage;
  @JsonKey(name: "gameType")
  int gameType;
  @JsonKey(name: "gdGameId")
  String gdGameId;
  @JsonKey(name: "historyRec")
  bool historyRec;
  @JsonKey(name: "historyRecBadge")
  String historyRecBadge;
  @JsonKey(name: "historyRecDesc")
  String historyRecDesc;
  @JsonKey(name: "historyRecSort")
  dynamic historyRecSort;
  @JsonKey(name: "hotFlag")
  int hotFlag;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "isFavorite")
  dynamic isFavorite;
  @JsonKey(name: "isGlbr")
  int isGlbr;
  @JsonKey(name: "isUpHot")
  dynamic isUpHot;
  @JsonKey(name: "jackpotId")
  String jackpotId;
  @JsonKey(name: "jackpotValue")
  dynamic jackpotValue;
  @JsonKey(name: "jsonParam")
  String jsonParam;
  @JsonKey(name: "localFlag")
  int localFlag;
  @JsonKey(name: "maintenanceFlag")
  int maintenanceFlag;
  @JsonKey(name: "maxWinMultiple")
  int maxWinMultiple;
  @JsonKey(name: "newFlag")
  int newFlag;
  @JsonKey(name: "payLine")
  int payLine;
  @JsonKey(name: "payoutFlag")
  int payoutFlag;
  @JsonKey(name: "pictureFlag")
  dynamic pictureFlag;
  @JsonKey(name: "platformCode")
  String platformCode;
  @JsonKey(name: "platformId")
  String platformId;
  @JsonKey(name: "platformName")
  String platformName;
  @JsonKey(name: "playerType")
  int playerType;
  @JsonKey(name: "poolFlag")
  int poolFlag;
  @JsonKey(name: "popularity")
  int popularity;
  @JsonKey(name: "preferenceFlag")
  int preferenceFlag;
  @JsonKey(name: "publishDate")
  DateTime publishDate;
  @JsonKey(name: "recommendFlag")
  int recommendFlag;
  @JsonKey(name: "rtp")
  String rtp;
  @JsonKey(name: "serverGameId")
  String serverGameId;
  @JsonKey(name: "showArea")
  int showArea;
  @JsonKey(name: "sortNo")
  int sortNo;
  @JsonKey(name: "tryFlag")
  int tryFlag;
  @JsonKey(name: "typeUrl")
  String typeUrl;

  GamePlatformModel({
    required this.badge,
    required this.badgeBgColor,
    required this.badgeTextColor,
    required this.bigPictureFlag,
    required this.exCode,
    required this.flag,
    required this.forYouRecBadge,
    required this.forYouRecDesc,
    required this.gameDesc,
    required this.gameFree,
    required this.gameHotValue,
    required this.gameId,
    required this.gameImage,
    required this.gameImageBig,
    required this.gameImageBigNew,
    required this.gameImageBigNewPlayerFlag,
    required this.gameImageLive,
    required this.gameImageNew,
    required this.gameImageNewPlayerFlag,
    required this.gameKind,
    required this.gameName,
    required this.gameNameEn,
    required this.gamePreImage,
    required this.gameType,
    required this.gdGameId,
    required this.historyRec,
    required this.historyRecBadge,
    required this.historyRecDesc,
    required this.historyRecSort,
    required this.hotFlag,
    required this.id,
    required this.isFavorite,
    required this.isGlbr,
    required this.isUpHot,
    required this.jackpotId,
    required this.jackpotValue,
    required this.jsonParam,
    required this.localFlag,
    required this.maintenanceFlag,
    required this.maxWinMultiple,
    required this.newFlag,
    required this.payLine,
    required this.payoutFlag,
    required this.pictureFlag,
    required this.platformCode,
    required this.platformId,
    required this.platformName,
    required this.playerType,
    required this.poolFlag,
    required this.popularity,
    required this.preferenceFlag,
    required this.publishDate,
    required this.recommendFlag,
    required this.rtp,
    required this.serverGameId,
    required this.showArea,
    required this.sortNo,
    required this.tryFlag,
    required this.typeUrl,
  });

  GamePlatformModel copyWith({
    String? badge,
    String? badgeBgColor,
    String? badgeTextColor,
    dynamic bigPictureFlag,
    String? exCode,
    int? flag,
    String? forYouRecBadge,
    String? forYouRecDesc,
    String? gameDesc,
    int? gameFree,
    String? gameHotValue,
    String? gameId,
    String? gameImage,
    String? gameImageBig,
    String? gameImageBigNew,
    int? gameImageBigNewPlayerFlag,
    String? gameImageLive,
    String? gameImageNew,
    int? gameImageNewPlayerFlag,
    String? gameKind,
    String? gameName,
    dynamic gameNameEn,
    String? gamePreImage,
    int? gameType,
    String? gdGameId,
    bool? historyRec,
    String? historyRecBadge,
    String? historyRecDesc,
    dynamic historyRecSort,
    int? hotFlag,
    int? id,
    dynamic isFavorite,
    int? isGlbr,
    dynamic isUpHot,
    String? jackpotId,
    dynamic jackpotValue,
    String? jsonParam,
    int? localFlag,
    int? maintenanceFlag,
    int? maxWinMultiple,
    int? newFlag,
    int? payLine,
    int? payoutFlag,
    dynamic pictureFlag,
    String? platformCode,
    String? platformId,
    String? platformName,
    int? playerType,
    int? poolFlag,
    int? popularity,
    int? preferenceFlag,
    DateTime? publishDate,
    int? recommendFlag,
    String? rtp,
    String? serverGameId,
    int? showArea,
    int? sortNo,
    int? tryFlag,
    String? typeUrl,
  }) => GamePlatformModel(
    badge: badge ?? this.badge,
    badgeBgColor: badgeBgColor ?? this.badgeBgColor,
    badgeTextColor: badgeTextColor ?? this.badgeTextColor,
    bigPictureFlag: bigPictureFlag ?? this.bigPictureFlag,
    exCode: exCode ?? this.exCode,
    flag: flag ?? this.flag,
    forYouRecBadge: forYouRecBadge ?? this.forYouRecBadge,
    forYouRecDesc: forYouRecDesc ?? this.forYouRecDesc,
    gameDesc: gameDesc ?? this.gameDesc,
    gameFree: gameFree ?? this.gameFree,
    gameHotValue: gameHotValue ?? this.gameHotValue,
    gameId: gameId ?? this.gameId,
    gameImage: gameImage ?? this.gameImage,
    gameImageBig: gameImageBig ?? this.gameImageBig,
    gameImageBigNew: gameImageBigNew ?? this.gameImageBigNew,
    gameImageBigNewPlayerFlag:
        gameImageBigNewPlayerFlag ?? this.gameImageBigNewPlayerFlag,
    gameImageLive: gameImageLive ?? this.gameImageLive,
    gameImageNew: gameImageNew ?? this.gameImageNew,
    gameImageNewPlayerFlag:
        gameImageNewPlayerFlag ?? this.gameImageNewPlayerFlag,
    gameKind: gameKind ?? this.gameKind,
    gameName: gameName ?? this.gameName,
    gameNameEn: gameNameEn ?? this.gameNameEn,
    gamePreImage: gamePreImage ?? this.gamePreImage,
    gameType: gameType ?? this.gameType,
    gdGameId: gdGameId ?? this.gdGameId,
    historyRec: historyRec ?? this.historyRec,
    historyRecBadge: historyRecBadge ?? this.historyRecBadge,
    historyRecDesc: historyRecDesc ?? this.historyRecDesc,
    historyRecSort: historyRecSort ?? this.historyRecSort,
    hotFlag: hotFlag ?? this.hotFlag,
    id: id ?? this.id,
    isFavorite: isFavorite ?? this.isFavorite,
    isGlbr: isGlbr ?? this.isGlbr,
    isUpHot: isUpHot ?? this.isUpHot,
    jackpotId: jackpotId ?? this.jackpotId,
    jackpotValue: jackpotValue ?? this.jackpotValue,
    jsonParam: jsonParam ?? this.jsonParam,
    localFlag: localFlag ?? this.localFlag,
    maintenanceFlag: maintenanceFlag ?? this.maintenanceFlag,
    maxWinMultiple: maxWinMultiple ?? this.maxWinMultiple,
    newFlag: newFlag ?? this.newFlag,
    payLine: payLine ?? this.payLine,
    payoutFlag: payoutFlag ?? this.payoutFlag,
    pictureFlag: pictureFlag ?? this.pictureFlag,
    platformCode: platformCode ?? this.platformCode,
    platformId: platformId ?? this.platformId,
    platformName: platformName ?? this.platformName,
    playerType: playerType ?? this.playerType,
    poolFlag: poolFlag ?? this.poolFlag,
    popularity: popularity ?? this.popularity,
    preferenceFlag: preferenceFlag ?? this.preferenceFlag,
    publishDate: publishDate ?? this.publishDate,
    recommendFlag: recommendFlag ?? this.recommendFlag,
    rtp: rtp ?? this.rtp,
    serverGameId: serverGameId ?? this.serverGameId,
    showArea: showArea ?? this.showArea,
    sortNo: sortNo ?? this.sortNo,
    tryFlag: tryFlag ?? this.tryFlag,
    typeUrl: typeUrl ?? this.typeUrl,
  );

  factory GamePlatformModel.fromJson(Map<String, dynamic> json) =>
      _$GamePlatformModelFromJson(json);

  Map<String, dynamic> toJson() => _$GamePlatformModelToJson(this);
}
