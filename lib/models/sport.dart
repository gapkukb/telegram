import 'package:json_annotation/json_annotation.dart';

part 'sport.g.dart';

@JsonSerializable()
class Match {
  @JsonKey(name: "matchId")
  final String matchId;
  @JsonKey(name: "leagueId")
  final String leagueId;
  @JsonKey(name: "homeId")
  final int homeId;
  @JsonKey(name: "awayId")
  final int awayId;
  @JsonKey(name: "leagueName")
  final String leagueName;
  @JsonKey(name: "homeName")
  final String homeName;
  @JsonKey(name: "homeLogo")
  final String homeLogo;
  @JsonKey(name: "awayName")
  final String awayName;
  @JsonKey(name: "awayLogo")
  final String awayLogo;
  @JsonKey(name: "leagueLogo")
  final String leagueLogo;
  @JsonKey(name: "eventStatus")
  final TStatus eventStatus;
  @JsonKey(name: "runningStatus")
  final String runningStatus;
  @JsonKey(name: "liveHomeScore")
  final int liveHomeScore;
  @JsonKey(name: "liveAwayScore")
  final int liveAwayScore;
  @JsonKey(name: "globalShowTime")
  final DateTime globalShowTime;
  @JsonKey(name: "namiId")
  final String namiId;
  @JsonKey(name: "sabaStreamViewFlag")
  final String sabaStreamViewFlag;
  @JsonKey(name: "sportraderStreamViewFlag")
  final String sportraderStreamViewFlag;
  @JsonKey(name: "cignalStreamViewFlag")
  final String cignalStreamViewFlag;
  @JsonKey(name: "namiStreamViewFlag")
  final String namiStreamViewFlag;
  @JsonKey(name: "sportTypeId")
  final String sportTypeId;
  @JsonKey(name: "sportTypeName")
  final SportTypeName sportTypeName;
  @JsonKey(name: "matchDate")
  final DateTime matchDate;
  @JsonKey(name: "matchTime")
  final String matchTime;
  @JsonKey(name: "inPlayTime")
  final String? inPlayTime;
  @JsonKey(name: "leagueSort")
  final int leagueSort;
  @JsonKey(name: "livePeriod")
  final int livePeriod;
  @JsonKey(name: "inPlayTime2")
  final String? inPlayTime2;
  @JsonKey(name: "inPlayTime3")
  final String? inPlayTime3;
  @JsonKey(name: "totalBetTypeNumber")
  final int totalBetTypeNumber;
  @JsonKey(name: "gameSession")
  final int? gameSession;
  @JsonKey(name: "leagueAliasFlag")
  final int leagueAliasFlag;
  @JsonKey(name: "leagueDefineLogo")
  final String leagueDefineLogo;
  @JsonKey(name: "delayLive")
  final bool? delayLive;
  @JsonKey(name: "isHT")
  final bool? isHt;
  @JsonKey(name: "sessionTime")
  final int? sessionTime;
  @JsonKey(name: "overTime")
  final int? overTime;
  @JsonKey(name: "isCountDownTimer")
  final bool? isCountDownTimer;
  @JsonKey(name: "liveTimer")
  final DateTime? liveTimer;
  @JsonKey(name: "pausePeriod")
  final int? pausePeriod;
  @JsonKey(name: "namiOtherStreamViewFlag")
  final String namiOtherStreamViewFlag;
  @JsonKey(name: "cignalSort")
  final int cignalSort;
  @JsonKey(name: "sportraderSort")
  final int sportraderSort;
  @JsonKey(name: "namiSort")
  final int namiSort;
  @JsonKey(name: "namiOtherSort")
  final int namiOtherSort;
  @JsonKey(name: "sabaSort")
  final int sabaSort;
  @JsonKey(name: "bobetSort")
  final int bobetSort;
  @JsonKey(name: "markets")
  final List<Market> markets;
  @JsonKey(name: "bobetSwitch")
  final String bobetSwitch;
  @JsonKey(name: "basketBallLiveScore")
  final Map<String, int> basketBallLiveScore;
  @JsonKey(name: "bobetStreamingStatus")
  final String bobetStreamingStatus;
  @JsonKey(name: "searchTab")
  final int searchTab;
  @JsonKey(name: "updateTime")
  final DateTime updateTime;
  @JsonKey(name: "cardPic")
  final String cardPic;
  @JsonKey(name: "detailPic")
  final String detailPic;
  @JsonKey(name: "leagueAlias")
  final String leagueAlias;
  @JsonKey(name: "hasPicks")
  final bool hasPicks;
  @JsonKey(name: "streamingOption")
  final int? streamingOption;
  @JsonKey(name: "channelCode")
  final String? channelCode;
  @JsonKey(name: "streamSource")
  final int? streamSource;
  @JsonKey(name: "sabaVideoUrl")
  final String? sabaVideoUrl;
  @JsonKey(name: "streamingLinks")
  final List<StreamingLink>? streamingLinks;
  @JsonKey(name: "leagueTags")
  final List<LeagueTag>? leagueTags;

  Match({
    required this.matchId,
    required this.leagueId,
    required this.homeId,
    required this.awayId,
    required this.leagueName,
    required this.homeName,
    required this.homeLogo,
    required this.awayName,
    required this.awayLogo,
    required this.leagueLogo,
    required this.eventStatus,
    required this.runningStatus,
    required this.liveHomeScore,
    required this.liveAwayScore,
    required this.globalShowTime,
    required this.namiId,
    required this.sabaStreamViewFlag,
    required this.sportraderStreamViewFlag,
    required this.cignalStreamViewFlag,
    required this.namiStreamViewFlag,
    required this.sportTypeId,
    required this.sportTypeName,
    required this.matchDate,
    required this.matchTime,
    this.inPlayTime,
    required this.leagueSort,
    required this.livePeriod,
    this.inPlayTime2,
    this.inPlayTime3,
    required this.totalBetTypeNumber,
    this.gameSession,
    required this.leagueAliasFlag,
    required this.leagueDefineLogo,
    this.delayLive,
    this.isHt,
    this.sessionTime,
    this.overTime,
    this.isCountDownTimer,
    this.liveTimer,
    this.pausePeriod,
    required this.namiOtherStreamViewFlag,
    required this.cignalSort,
    required this.sportraderSort,
    required this.namiSort,
    required this.namiOtherSort,
    required this.sabaSort,
    required this.bobetSort,
    required this.markets,
    required this.bobetSwitch,
    required this.basketBallLiveScore,
    required this.bobetStreamingStatus,
    required this.searchTab,
    required this.updateTime,
    required this.cardPic,
    required this.detailPic,
    required this.leagueAlias,
    required this.hasPicks,
    this.streamingOption,
    this.channelCode,
    this.streamSource,
    this.sabaVideoUrl,
    this.streamingLinks,
    this.leagueTags,
  });

  Match copyWith({
    String? matchId,
    String? leagueId,
    int? homeId,
    int? awayId,
    String? leagueName,
    String? homeName,
    String? homeLogo,
    String? awayName,
    String? awayLogo,
    String? leagueLogo,
    TStatus? eventStatus,
    String? runningStatus,
    int? liveHomeScore,
    int? liveAwayScore,
    DateTime? globalShowTime,
    String? namiId,
    String? sabaStreamViewFlag,
    String? sportraderStreamViewFlag,
    String? cignalStreamViewFlag,
    String? namiStreamViewFlag,
    String? sportTypeId,
    SportTypeName? sportTypeName,
    DateTime? matchDate,
    String? matchTime,
    String? inPlayTime,
    int? leagueSort,
    int? livePeriod,
    String? inPlayTime2,
    String? inPlayTime3,
    int? totalBetTypeNumber,
    int? gameSession,
    int? leagueAliasFlag,
    String? leagueDefineLogo,
    bool? delayLive,
    bool? isHt,
    int? sessionTime,
    int? overTime,
    bool? isCountDownTimer,
    DateTime? liveTimer,
    int? pausePeriod,
    String? namiOtherStreamViewFlag,
    int? cignalSort,
    int? sportraderSort,
    int? namiSort,
    int? namiOtherSort,
    int? sabaSort,
    int? bobetSort,
    List<Market>? markets,
    String? bobetSwitch,
    Map<String, int>? basketBallLiveScore,
    String? bobetStreamingStatus,
    int? searchTab,
    DateTime? updateTime,
    String? cardPic,
    String? detailPic,
    String? leagueAlias,
    bool? hasPicks,
    int? streamingOption,
    String? channelCode,
    int? streamSource,
    String? sabaVideoUrl,
    List<StreamingLink>? streamingLinks,
    List<LeagueTag>? leagueTags,
  }) => Match(
    matchId: matchId ?? this.matchId,
    leagueId: leagueId ?? this.leagueId,
    homeId: homeId ?? this.homeId,
    awayId: awayId ?? this.awayId,
    leagueName: leagueName ?? this.leagueName,
    homeName: homeName ?? this.homeName,
    homeLogo: homeLogo ?? this.homeLogo,
    awayName: awayName ?? this.awayName,
    awayLogo: awayLogo ?? this.awayLogo,
    leagueLogo: leagueLogo ?? this.leagueLogo,
    eventStatus: eventStatus ?? this.eventStatus,
    runningStatus: runningStatus ?? this.runningStatus,
    liveHomeScore: liveHomeScore ?? this.liveHomeScore,
    liveAwayScore: liveAwayScore ?? this.liveAwayScore,
    globalShowTime: globalShowTime ?? this.globalShowTime,
    namiId: namiId ?? this.namiId,
    sabaStreamViewFlag: sabaStreamViewFlag ?? this.sabaStreamViewFlag,
    sportraderStreamViewFlag:
        sportraderStreamViewFlag ?? this.sportraderStreamViewFlag,
    cignalStreamViewFlag: cignalStreamViewFlag ?? this.cignalStreamViewFlag,
    namiStreamViewFlag: namiStreamViewFlag ?? this.namiStreamViewFlag,
    sportTypeId: sportTypeId ?? this.sportTypeId,
    sportTypeName: sportTypeName ?? this.sportTypeName,
    matchDate: matchDate ?? this.matchDate,
    matchTime: matchTime ?? this.matchTime,
    inPlayTime: inPlayTime ?? this.inPlayTime,
    leagueSort: leagueSort ?? this.leagueSort,
    livePeriod: livePeriod ?? this.livePeriod,
    inPlayTime2: inPlayTime2 ?? this.inPlayTime2,
    inPlayTime3: inPlayTime3 ?? this.inPlayTime3,
    totalBetTypeNumber: totalBetTypeNumber ?? this.totalBetTypeNumber,
    gameSession: gameSession ?? this.gameSession,
    leagueAliasFlag: leagueAliasFlag ?? this.leagueAliasFlag,
    leagueDefineLogo: leagueDefineLogo ?? this.leagueDefineLogo,
    delayLive: delayLive ?? this.delayLive,
    isHt: isHt ?? this.isHt,
    sessionTime: sessionTime ?? this.sessionTime,
    overTime: overTime ?? this.overTime,
    isCountDownTimer: isCountDownTimer ?? this.isCountDownTimer,
    liveTimer: liveTimer ?? this.liveTimer,
    pausePeriod: pausePeriod ?? this.pausePeriod,
    namiOtherStreamViewFlag:
        namiOtherStreamViewFlag ?? this.namiOtherStreamViewFlag,
    cignalSort: cignalSort ?? this.cignalSort,
    sportraderSort: sportraderSort ?? this.sportraderSort,
    namiSort: namiSort ?? this.namiSort,
    namiOtherSort: namiOtherSort ?? this.namiOtherSort,
    sabaSort: sabaSort ?? this.sabaSort,
    bobetSort: bobetSort ?? this.bobetSort,
    markets: markets ?? this.markets,
    bobetSwitch: bobetSwitch ?? this.bobetSwitch,
    basketBallLiveScore: basketBallLiveScore ?? this.basketBallLiveScore,
    bobetStreamingStatus: bobetStreamingStatus ?? this.bobetStreamingStatus,
    searchTab: searchTab ?? this.searchTab,
    updateTime: updateTime ?? this.updateTime,
    cardPic: cardPic ?? this.cardPic,
    detailPic: detailPic ?? this.detailPic,
    leagueAlias: leagueAlias ?? this.leagueAlias,
    hasPicks: hasPicks ?? this.hasPicks,
    streamingOption: streamingOption ?? this.streamingOption,
    channelCode: channelCode ?? this.channelCode,
    streamSource: streamSource ?? this.streamSource,
    sabaVideoUrl: sabaVideoUrl ?? this.sabaVideoUrl,
    streamingLinks: streamingLinks ?? this.streamingLinks,
    leagueTags: leagueTags ?? this.leagueTags,
  );

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

enum TStatus {
  @JsonValue("closePrice")
  CLOSE_PRICE,
  @JsonValue("running")
  RUNNING,
}

@JsonSerializable()
class LeagueTag {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "tagName")
  final String tagName;
  @JsonKey(name: "leagueId")
  final String leagueId;
  @JsonKey(name: "matchId")
  final dynamic matchId;
  @JsonKey(name: "picUrl")
  final String picUrl;
  @JsonKey(name: "jumpUrl")
  final String jumpUrl;

  LeagueTag({
    required this.id,
    required this.tagName,
    required this.leagueId,
    required this.matchId,
    required this.picUrl,
    required this.jumpUrl,
  });

  LeagueTag copyWith({
    int? id,
    String? tagName,
    String? leagueId,
    dynamic matchId,
    String? picUrl,
    String? jumpUrl,
  }) => LeagueTag(
    id: id ?? this.id,
    tagName: tagName ?? this.tagName,
    leagueId: leagueId ?? this.leagueId,
    matchId: matchId ?? this.matchId,
    picUrl: picUrl ?? this.picUrl,
    jumpUrl: jumpUrl ?? this.jumpUrl,
  );

  factory LeagueTag.fromJson(Map<String, dynamic> json) =>
      _$LeagueTagFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueTagToJson(this);
}

@JsonSerializable()
class Market {
  @JsonKey(name: "matchId")
  final int matchId;
  @JsonKey(name: "betType")
  final int betType;
  @JsonKey(name: "marketId")
  final int marketId;
  @JsonKey(name: "marketStatus")
  final TStatus marketStatus;
  @JsonKey(name: "gameMap")
  final dynamic gameMap;
  @JsonKey(name: "gameRound")
  final dynamic gameRound;
  @JsonKey(name: "resourceid")
  final dynamic resourceid;
  @JsonKey(name: "oddTypeCount")
  final int oddTypeCount;
  @JsonKey(name: "category")
  final int category;
  @JsonKey(name: "showCategory")
  final String? showCategory;
  @JsonKey(name: "sort")
  final int sort;
  @JsonKey(name: "combo")
  final int combo;
  @JsonKey(name: "selections")
  final List<Selection> selections;
  @JsonKey(name: "selections2")
  final List<dynamic> selections2;

  Market({
    required this.matchId,
    required this.betType,
    required this.marketId,
    required this.marketStatus,
    required this.gameMap,
    required this.gameRound,
    required this.resourceid,
    required this.oddTypeCount,
    required this.category,
    required this.showCategory,
    required this.sort,
    required this.combo,
    required this.selections,
    required this.selections2,
  });

  Market copyWith({
    int? matchId,
    int? betType,
    int? marketId,
    TStatus? marketStatus,
    dynamic gameMap,
    dynamic gameRound,
    dynamic resourceid,
    int? oddTypeCount,
    int? category,
    String? showCategory,
    int? sort,
    int? combo,
    List<Selection>? selections,
    List<dynamic>? selections2,
  }) => Market(
    matchId: matchId ?? this.matchId,
    betType: betType ?? this.betType,
    marketId: marketId ?? this.marketId,
    marketStatus: marketStatus ?? this.marketStatus,
    gameMap: gameMap ?? this.gameMap,
    gameRound: gameRound ?? this.gameRound,
    resourceid: resourceid ?? this.resourceid,
    oddTypeCount: oddTypeCount ?? this.oddTypeCount,
    category: category ?? this.category,
    showCategory: showCategory ?? this.showCategory,
    sort: sort ?? this.sort,
    combo: combo ?? this.combo,
    selections: selections ?? this.selections,
    selections2: selections2 ?? this.selections2,
  );

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);
}

@JsonSerializable()
class Selection {
  @JsonKey(name: "price")
  final String price;
  @JsonKey(name: "allPrice")
  final AllPrice allPrice;
  @JsonKey(name: "oddRange")
  final int oddRange;
  @JsonKey(name: "key")
  final Key key;
  @JsonKey(name: "keyEn")
  final KeyEn keyEn;
  @JsonKey(name: "point")
  final double point;
  @JsonKey(name: "point2")
  final dynamic point2;
  @JsonKey(name: "decimalPrice")
  final dynamic decimalPrice;
  @JsonKey(name: "hongKongPrice")
  final dynamic hongKongPrice;

  Selection({
    required this.price,
    required this.allPrice,
    required this.oddRange,
    required this.key,
    required this.keyEn,
    required this.point,
    required this.point2,
    required this.decimalPrice,
    required this.hongKongPrice,
  });

  Selection copyWith({
    String? price,
    AllPrice? allPrice,
    int? oddRange,
    Key? key,
    KeyEn? keyEn,
    double? point,
    dynamic point2,
    dynamic decimalPrice,
    dynamic hongKongPrice,
  }) => Selection(
    price: price ?? this.price,
    allPrice: allPrice ?? this.allPrice,
    oddRange: oddRange ?? this.oddRange,
    key: key ?? this.key,
    keyEn: keyEn ?? this.keyEn,
    point: point ?? this.point,
    point2: point2 ?? this.point2,
    decimalPrice: decimalPrice ?? this.decimalPrice,
    hongKongPrice: hongKongPrice ?? this.hongKongPrice,
  );

  factory Selection.fromJson(Map<String, dynamic> json) =>
      _$SelectionFromJson(json);

  Map<String, dynamic> toJson() => _$SelectionToJson(this);
}

@JsonSerializable()
class AllPrice {
  @JsonKey(name: "oddRange")
  final int oddRange;
  @JsonKey(name: "decimalPrice")
  final double decimalPrice;
  @JsonKey(name: "hongKongPrice")
  final double hongKongPrice;

  AllPrice({
    required this.oddRange,
    required this.decimalPrice,
    required this.hongKongPrice,
  });

  AllPrice copyWith({
    int? oddRange,
    double? decimalPrice,
    double? hongKongPrice,
  }) => AllPrice(
    oddRange: oddRange ?? this.oddRange,
    decimalPrice: decimalPrice ?? this.decimalPrice,
    hongKongPrice: hongKongPrice ?? this.hongKongPrice,
  );

  factory AllPrice.fromJson(Map<String, dynamic> json) =>
      _$AllPriceFromJson(json);

  Map<String, dynamic> toJson() => _$AllPriceToJson(this);
}

enum Key {
  @JsonValue("a")
  A,
  @JsonValue("h")
  H,
  @JsonValue("o")
  O,
  @JsonValue("u")
  U,
}

enum KeyEn {
  @JsonValue("Away")
  AWAY,
  @JsonValue("Home")
  HOME,
  @JsonValue("Over")
  OVER,
  @JsonValue("Under")
  UNDER,
}

enum SportTypeName {
  @JsonValue("basketball")
  BASKETBALL,
  @JsonValue("virtualBasketball")
  VIRTUAL_BASKETBALL,
}

@JsonSerializable()
class StreamingLink {
  @JsonKey(name: "provider")
  final String provider;
  @JsonKey(name: "url")
  final String url;

  StreamingLink({required this.provider, required this.url});

  StreamingLink copyWith({String? provider, String? url}) =>
      StreamingLink(provider: provider ?? this.provider, url: url ?? this.url);

  factory StreamingLink.fromJson(Map<String, dynamic> json) =>
      _$StreamingLinkFromJson(json);

  Map<String, dynamic> toJson() => _$StreamingLinkToJson(this);
}
