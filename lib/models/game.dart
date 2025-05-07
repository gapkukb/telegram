import 'package:json/json.dart';

@JsonCodable()
class GameCategory {
  List<GameInfoList> gameInfoList;
  String gameKey;
}

@JsonCodable()
class GameInfoList {
  String code;
  List<Detail> detail;
}

@JsonCodable()
class Detail {
  String tabName;
  String? allFile;
  String? pageFile;
  int? sort;
  int? createAt;
  String? platformId;
}
