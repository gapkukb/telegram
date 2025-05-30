// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
  matchId: json['matchId'] as String,
  leagueId: json['leagueId'] as String,
  homeId: (json['homeId'] as num).toInt(),
  awayId: (json['awayId'] as num).toInt(),
  leagueName: json['leagueName'] as String,
  homeName: json['homeName'] as String,
  homeLogo: json['homeLogo'] as String,
  awayName: json['awayName'] as String,
  awayLogo: json['awayLogo'] as String,
  leagueLogo: json['leagueLogo'] as String,
  eventStatus: $enumDecode(_$TStatusEnumMap, json['eventStatus']),
  runningStatus: json['runningStatus'] as String,
  liveHomeScore: (json['liveHomeScore'] as num).toInt(),
  liveAwayScore: (json['liveAwayScore'] as num).toInt(),
  globalShowTime: DateTime.parse(json['globalShowTime'] as String),
  namiId: json['namiId'] as String,
  sabaStreamViewFlag: json['sabaStreamViewFlag'] as String,
  sportraderStreamViewFlag: json['sportraderStreamViewFlag'] as String,
  cignalStreamViewFlag: json['cignalStreamViewFlag'] as String,
  namiStreamViewFlag: json['namiStreamViewFlag'] as String,
  sportTypeId: json['sportTypeId'] as String,
  sportTypeName: $enumDecode(_$SportTypeNameEnumMap, json['sportTypeName']),
  matchDate: DateTime.parse(json['matchDate'] as String),
  matchTime: json['matchTime'] as String,
  inPlayTime: json['inPlayTime'] as String?,
  leagueSort: (json['leagueSort'] as num).toInt(),
  livePeriod: (json['livePeriod'] as num).toInt(),
  inPlayTime2: json['inPlayTime2'] as String?,
  inPlayTime3: json['inPlayTime3'] as String?,
  totalBetTypeNumber: (json['totalBetTypeNumber'] as num).toInt(),
  gameSession: (json['gameSession'] as num?)?.toInt(),
  leagueAliasFlag: (json['leagueAliasFlag'] as num).toInt(),
  leagueDefineLogo: json['leagueDefineLogo'] as String,
  delayLive: json['delayLive'] as bool?,
  isHt: json['isHT'] as bool?,
  sessionTime: (json['sessionTime'] as num?)?.toInt(),
  overTime: (json['overTime'] as num?)?.toInt(),
  isCountDownTimer: json['isCountDownTimer'] as bool?,
  liveTimer:
      json['liveTimer'] == null
          ? null
          : DateTime.parse(json['liveTimer'] as String),
  pausePeriod: (json['pausePeriod'] as num?)?.toInt(),
  namiOtherStreamViewFlag: json['namiOtherStreamViewFlag'] as String,
  cignalSort: (json['cignalSort'] as num).toInt(),
  sportraderSort: (json['sportraderSort'] as num).toInt(),
  namiSort: (json['namiSort'] as num).toInt(),
  namiOtherSort: (json['namiOtherSort'] as num).toInt(),
  sabaSort: (json['sabaSort'] as num).toInt(),
  bobetSort: (json['bobetSort'] as num).toInt(),
  markets:
      (json['markets'] as List<dynamic>)
          .map((e) => Market.fromJson(e as Map<String, dynamic>))
          .toList(),
  bobetSwitch: json['bobetSwitch'] as String,
  basketBallLiveScore: Map<String, int>.from(
    json['basketBallLiveScore'] as Map,
  ),
  bobetStreamingStatus: json['bobetStreamingStatus'] as String,
  searchTab: (json['searchTab'] as num).toInt(),
  updateTime: DateTime.parse(json['updateTime'] as String),
  cardPic: json['cardPic'] as String,
  detailPic: json['detailPic'] as String,
  leagueAlias: json['leagueAlias'] as String,
  hasPicks: json['hasPicks'] as bool,
  streamingOption: (json['streamingOption'] as num?)?.toInt(),
  channelCode: json['channelCode'] as String?,
  streamSource: (json['streamSource'] as num?)?.toInt(),
  sabaVideoUrl: json['sabaVideoUrl'] as String?,
  streamingLinks:
      (json['streamingLinks'] as List<dynamic>?)
          ?.map((e) => StreamingLink.fromJson(e as Map<String, dynamic>))
          .toList(),
  leagueTags:
      (json['leagueTags'] as List<dynamic>?)
          ?.map((e) => LeagueTag.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
  'matchId': instance.matchId,
  'leagueId': instance.leagueId,
  'homeId': instance.homeId,
  'awayId': instance.awayId,
  'leagueName': instance.leagueName,
  'homeName': instance.homeName,
  'homeLogo': instance.homeLogo,
  'awayName': instance.awayName,
  'awayLogo': instance.awayLogo,
  'leagueLogo': instance.leagueLogo,
  'eventStatus': _$TStatusEnumMap[instance.eventStatus]!,
  'runningStatus': instance.runningStatus,
  'liveHomeScore': instance.liveHomeScore,
  'liveAwayScore': instance.liveAwayScore,
  'globalShowTime': instance.globalShowTime.toIso8601String(),
  'namiId': instance.namiId,
  'sabaStreamViewFlag': instance.sabaStreamViewFlag,
  'sportraderStreamViewFlag': instance.sportraderStreamViewFlag,
  'cignalStreamViewFlag': instance.cignalStreamViewFlag,
  'namiStreamViewFlag': instance.namiStreamViewFlag,
  'sportTypeId': instance.sportTypeId,
  'sportTypeName': _$SportTypeNameEnumMap[instance.sportTypeName]!,
  'matchDate': instance.matchDate.toIso8601String(),
  'matchTime': instance.matchTime,
  'inPlayTime': instance.inPlayTime,
  'leagueSort': instance.leagueSort,
  'livePeriod': instance.livePeriod,
  'inPlayTime2': instance.inPlayTime2,
  'inPlayTime3': instance.inPlayTime3,
  'totalBetTypeNumber': instance.totalBetTypeNumber,
  'gameSession': instance.gameSession,
  'leagueAliasFlag': instance.leagueAliasFlag,
  'leagueDefineLogo': instance.leagueDefineLogo,
  'delayLive': instance.delayLive,
  'isHT': instance.isHt,
  'sessionTime': instance.sessionTime,
  'overTime': instance.overTime,
  'isCountDownTimer': instance.isCountDownTimer,
  'liveTimer': instance.liveTimer?.toIso8601String(),
  'pausePeriod': instance.pausePeriod,
  'namiOtherStreamViewFlag': instance.namiOtherStreamViewFlag,
  'cignalSort': instance.cignalSort,
  'sportraderSort': instance.sportraderSort,
  'namiSort': instance.namiSort,
  'namiOtherSort': instance.namiOtherSort,
  'sabaSort': instance.sabaSort,
  'bobetSort': instance.bobetSort,
  'markets': instance.markets,
  'bobetSwitch': instance.bobetSwitch,
  'basketBallLiveScore': instance.basketBallLiveScore,
  'bobetStreamingStatus': instance.bobetStreamingStatus,
  'searchTab': instance.searchTab,
  'updateTime': instance.updateTime.toIso8601String(),
  'cardPic': instance.cardPic,
  'detailPic': instance.detailPic,
  'leagueAlias': instance.leagueAlias,
  'hasPicks': instance.hasPicks,
  'streamingOption': instance.streamingOption,
  'channelCode': instance.channelCode,
  'streamSource': instance.streamSource,
  'sabaVideoUrl': instance.sabaVideoUrl,
  'streamingLinks': instance.streamingLinks,
  'leagueTags': instance.leagueTags,
};

const _$TStatusEnumMap = {
  TStatus.CLOSE_PRICE: 'closePrice',
  TStatus.RUNNING: 'running',
};

const _$SportTypeNameEnumMap = {
  SportTypeName.BASKETBALL: 'basketball',
  SportTypeName.VIRTUAL_BASKETBALL: 'virtualBasketball',
};

LeagueTag _$LeagueTagFromJson(Map<String, dynamic> json) => LeagueTag(
  id: (json['id'] as num).toInt(),
  tagName: json['tagName'] as String,
  leagueId: json['leagueId'] as String,
  matchId: json['matchId'],
  picUrl: json['picUrl'] as String,
  jumpUrl: json['jumpUrl'] as String,
);

Map<String, dynamic> _$LeagueTagToJson(LeagueTag instance) => <String, dynamic>{
  'id': instance.id,
  'tagName': instance.tagName,
  'leagueId': instance.leagueId,
  'matchId': instance.matchId,
  'picUrl': instance.picUrl,
  'jumpUrl': instance.jumpUrl,
};

Market _$MarketFromJson(Map<String, dynamic> json) => Market(
  matchId: (json['matchId'] as num).toInt(),
  betType: (json['betType'] as num).toInt(),
  marketId: (json['marketId'] as num).toInt(),
  marketStatus: $enumDecode(_$TStatusEnumMap, json['marketStatus']),
  gameMap: json['gameMap'],
  gameRound: json['gameRound'],
  resourceid: json['resourceid'],
  oddTypeCount: (json['oddTypeCount'] as num).toInt(),
  category: (json['category'] as num).toInt(),
  showCategory: json['showCategory'] as String?,
  sort: (json['sort'] as num).toInt(),
  combo: (json['combo'] as num).toInt(),
  selections:
      (json['selections'] as List<dynamic>)
          .map((e) => Selection.fromJson(e as Map<String, dynamic>))
          .toList(),
  selections2: json['selections2'] as List<dynamic>,
);

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
  'matchId': instance.matchId,
  'betType': instance.betType,
  'marketId': instance.marketId,
  'marketStatus': _$TStatusEnumMap[instance.marketStatus]!,
  'gameMap': instance.gameMap,
  'gameRound': instance.gameRound,
  'resourceid': instance.resourceid,
  'oddTypeCount': instance.oddTypeCount,
  'category': instance.category,
  'showCategory': instance.showCategory,
  'sort': instance.sort,
  'combo': instance.combo,
  'selections': instance.selections,
  'selections2': instance.selections2,
};

Selection _$SelectionFromJson(Map<String, dynamic> json) => Selection(
  price: json['price'] as String,
  allPrice: AllPrice.fromJson(json['allPrice'] as Map<String, dynamic>),
  oddRange: (json['oddRange'] as num).toInt(),
  key: $enumDecode(_$KeyEnumMap, json['key']),
  keyEn: $enumDecode(_$KeyEnEnumMap, json['keyEn']),
  point: (json['point'] as num).toDouble(),
  point2: json['point2'],
  decimalPrice: json['decimalPrice'],
  hongKongPrice: json['hongKongPrice'],
);

Map<String, dynamic> _$SelectionToJson(Selection instance) => <String, dynamic>{
  'price': instance.price,
  'allPrice': instance.allPrice,
  'oddRange': instance.oddRange,
  'key': _$KeyEnumMap[instance.key]!,
  'keyEn': _$KeyEnEnumMap[instance.keyEn]!,
  'point': instance.point,
  'point2': instance.point2,
  'decimalPrice': instance.decimalPrice,
  'hongKongPrice': instance.hongKongPrice,
};

const _$KeyEnumMap = {Key.A: 'a', Key.H: 'h', Key.O: 'o', Key.U: 'u'};

const _$KeyEnEnumMap = {
  KeyEn.AWAY: 'Away',
  KeyEn.HOME: 'Home',
  KeyEn.OVER: 'Over',
  KeyEn.UNDER: 'Under',
};

AllPrice _$AllPriceFromJson(Map<String, dynamic> json) => AllPrice(
  oddRange: (json['oddRange'] as num).toInt(),
  decimalPrice: (json['decimalPrice'] as num).toDouble(),
  hongKongPrice: (json['hongKongPrice'] as num).toDouble(),
);

Map<String, dynamic> _$AllPriceToJson(AllPrice instance) => <String, dynamic>{
  'oddRange': instance.oddRange,
  'decimalPrice': instance.decimalPrice,
  'hongKongPrice': instance.hongKongPrice,
};

StreamingLink _$StreamingLinkFromJson(Map<String, dynamic> json) =>
    StreamingLink(
      provider: json['provider'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StreamingLinkToJson(StreamingLink instance) =>
    <String, dynamic>{'provider': instance.provider, 'url': instance.url};
