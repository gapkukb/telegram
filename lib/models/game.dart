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

class GamePlatformModel {
  String? badge;
  String? badgeBgColor;
  String? badgeTextColor;
  Null bigPictureFlag;
  String? exCode;
  int? flag;
  String? forYouRecBadge;
  String? forYouRecDesc;
  String? gameDesc;
  int? gameFree;
  String? gameHotValue;
  String? gameId;
  String? gameImage;
  String? gameImageBig;
  String? gameImageBigNew;
  int? gameImageBigNewPlayerFlag;
  String? gameImageLive;
  String? gameImageNew;
  int? gameImageNewPlayerFlag;
  String? gameKind;
  String? gameName;
  Null gameNameEn;
  String? gamePreImage;
  int? gameType;
  String? gdGameId;
  bool? historyRec;
  String? historyRecBadge;
  String? historyRecDesc;
  Null historyRecSort;
  int? hotFlag;
  int? id;
  Null isFavorite;
  int? isGlbr;
  int? isUpHot;
  String? jackpotId;
  Null jackpotValue;
  String? jsonParam;
  int? localFlag;
  int? maintenanceFlag;
  int? maxWinMultiple;
  int? newFlag;
  int? payLine;
  int? payoutFlag;
  Null pictureFlag;
  String? platformCode;
  String? platformId;
  String? platformName;
  int? playerType;
  int? poolFlag;
  int? popularity;
  int? preferenceFlag;
  String? publishDate;
  int? recommendFlag;
  String? rtp;
  String? serverGameId;
  int? showArea;
  int? sortNo;
  int? tryFlag;
  String? typeUrl;

  GamePlatformModel({
    this.badge,
    this.badgeBgColor,
    this.badgeTextColor,
    this.bigPictureFlag,
    this.exCode,
    this.flag,
    this.forYouRecBadge,
    this.forYouRecDesc,
    this.gameDesc,
    this.gameFree,
    this.gameHotValue,
    this.gameId,
    this.gameImage,
    this.gameImageBig,
    this.gameImageBigNew,
    this.gameImageBigNewPlayerFlag,
    this.gameImageLive,
    this.gameImageNew,
    this.gameImageNewPlayerFlag,
    this.gameKind,
    this.gameName,
    this.gameNameEn,
    this.gamePreImage,
    this.gameType,
    this.gdGameId,
    this.historyRec,
    this.historyRecBadge,
    this.historyRecDesc,
    this.historyRecSort,
    this.hotFlag,
    this.id,
    this.isFavorite,
    this.isGlbr,
    this.isUpHot,
    this.jackpotId,
    this.jackpotValue,
    this.jsonParam,
    this.localFlag,
    this.maintenanceFlag,
    this.maxWinMultiple,
    this.newFlag,
    this.payLine,
    this.payoutFlag,
    this.pictureFlag,
    this.platformCode,
    this.platformId,
    this.platformName,
    this.playerType,
    this.poolFlag,
    this.popularity,
    this.preferenceFlag,
    this.publishDate,
    this.recommendFlag,
    this.rtp,
    this.serverGameId,
    this.showArea,
    this.sortNo,
    this.tryFlag,
    this.typeUrl,
  });

  GamePlatformModel.fromJson(Map<String, dynamic> json) {
    badge = json['badge'];
    badgeBgColor = json['badgeBgColor'];
    badgeTextColor = json['badgeTextColor'];
    bigPictureFlag = json['bigPictureFlag'];
    exCode = json['exCode'];
    flag = json['flag'];
    forYouRecBadge = json['forYouRecBadge'];
    forYouRecDesc = json['forYouRecDesc'];
    gameDesc = json['gameDesc'];
    gameFree = json['gameFree'];
    gameHotValue = json['gameHotValue'];
    gameId = json['gameId'];
    gameImage = json['gameImage'];
    gameImageBig = json['gameImageBig'];
    gameImageBigNew = json['gameImageBigNew'];
    gameImageBigNewPlayerFlag = json['gameImageBigNewPlayerFlag'];
    gameImageLive = json['gameImageLive'];
    gameImageNew = json['gameImageNew'];
    gameImageNewPlayerFlag = json['gameImageNewPlayerFlag'];
    gameKind = json['gameKind'];
    gameName = json['gameName'];
    gameNameEn = json['gameNameEn'];
    gamePreImage = json['gamePreImage'];
    gameType = json['gameType'];
    gdGameId = json['gdGameId'];
    historyRec = json['historyRec'];
    historyRecBadge = json['historyRecBadge'];
    historyRecDesc = json['historyRecDesc'];
    historyRecSort = json['historyRecSort'];
    hotFlag = json['hotFlag'];
    id = json['id'];
    isFavorite = json['isFavorite'];
    isGlbr = json['isGlbr'];
    isUpHot = json['isUpHot'];
    jackpotId = json['jackpotId'];
    jackpotValue = json['jackpotValue'];
    jsonParam = json['jsonParam'];
    localFlag = json['localFlag'];
    maintenanceFlag = json['maintenanceFlag'];
    maxWinMultiple = json['maxWinMultiple'];
    newFlag = json['newFlag'];
    payLine = json['payLine'];
    payoutFlag = json['payoutFlag'];
    pictureFlag = json['pictureFlag'];
    platformCode = json['platformCode'];
    platformId = json['platformId'];
    platformName = json['platformName'];
    playerType = json['playerType'];
    poolFlag = json['poolFlag'];
    popularity = json['popularity'];
    preferenceFlag = json['preferenceFlag'];
    publishDate = json['publishDate'];
    recommendFlag = json['recommendFlag'];
    rtp = json['rtp'];
    serverGameId = json['serverGameId'];
    showArea = json['showArea'];
    sortNo = json['sortNo'];
    tryFlag = json['tryFlag'];
    typeUrl = json['typeUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['badge'] = badge;
    data['badgeBgColor'] = badgeBgColor;
    data['badgeTextColor'] = badgeTextColor;
    data['bigPictureFlag'] = bigPictureFlag;
    data['exCode'] = exCode;
    data['flag'] = flag;
    data['forYouRecBadge'] = forYouRecBadge;
    data['forYouRecDesc'] = forYouRecDesc;
    data['gameDesc'] = gameDesc;
    data['gameFree'] = gameFree;
    data['gameHotValue'] = gameHotValue;
    data['gameId'] = gameId;
    data['gameImage'] = gameImage;
    data['gameImageBig'] = gameImageBig;
    data['gameImageBigNew'] = gameImageBigNew;
    data['gameImageBigNewPlayerFlag'] = gameImageBigNewPlayerFlag;
    data['gameImageLive'] = gameImageLive;
    data['gameImageNew'] = gameImageNew;
    data['gameImageNewPlayerFlag'] = gameImageNewPlayerFlag;
    data['gameKind'] = gameKind;
    data['gameName'] = gameName;
    data['gameNameEn'] = gameNameEn;
    data['gamePreImage'] = gamePreImage;
    data['gameType'] = gameType;
    data['gdGameId'] = gdGameId;
    data['historyRec'] = historyRec;
    data['historyRecBadge'] = historyRecBadge;
    data['historyRecDesc'] = historyRecDesc;
    data['historyRecSort'] = historyRecSort;
    data['hotFlag'] = hotFlag;
    data['id'] = id;
    data['isFavorite'] = isFavorite;
    data['isGlbr'] = isGlbr;
    data['isUpHot'] = isUpHot;
    data['jackpotId'] = jackpotId;
    data['jackpotValue'] = jackpotValue;
    data['jsonParam'] = jsonParam;
    data['localFlag'] = localFlag;
    data['maintenanceFlag'] = maintenanceFlag;
    data['maxWinMultiple'] = maxWinMultiple;
    data['newFlag'] = newFlag;
    data['payLine'] = payLine;
    data['payoutFlag'] = payoutFlag;
    data['pictureFlag'] = pictureFlag;
    data['platformCode'] = platformCode;
    data['platformId'] = platformId;
    data['platformName'] = platformName;
    data['playerType'] = playerType;
    data['poolFlag'] = poolFlag;
    data['popularity'] = popularity;
    data['preferenceFlag'] = preferenceFlag;
    data['publishDate'] = publishDate;
    data['recommendFlag'] = recommendFlag;
    data['rtp'] = rtp;
    data['serverGameId'] = serverGameId;
    data['showArea'] = showArea;
    data['sortNo'] = sortNo;
    data['tryFlag'] = tryFlag;
    data['typeUrl'] = typeUrl;
    return data;
  }
}
