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

  GameCategory copyWith({List<GameInfoList>? gameInfoList, String? gameKey}) => GameCategory(gameInfoList: gameInfoList ?? this.gameInfoList, gameKey: gameKey ?? this.gameKey);

  factory GameCategory.fromJson(Map<String, dynamic> json) => _$GameCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$GameCategoryToJson(this);
}

@JsonSerializable()
class GameInfoList {
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "detail", defaultValue: [])
  final List<Detail> detail;

  GameInfoList({required this.code, required this.detail});

  GameInfoList copyWith({String? code, List<Detail>? detail}) => GameInfoList(code: code ?? this.code, detail: detail ?? this.detail);

  factory GameInfoList.fromJson(Map<String, dynamic> json) => _$GameInfoListFromJson(json);

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

  Detail({required this.tabName, this.allFile, this.pageFile, required this.sort, required this.createAt, this.platformId});

  Detail copyWith({String? tabName, String? allFile, String? pageFile, int? sort, int? createAt, String? platformId}) => Detail(tabName: tabName ?? this.tabName, allFile: allFile ?? this.allFile, pageFile: pageFile ?? this.pageFile, sort: sort ?? this.sort, createAt: createAt ?? this.createAt, platformId: platformId ?? this.platformId);

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}
