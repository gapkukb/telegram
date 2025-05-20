import 'package:super_plus/http/http.dart';
import 'package:super_plus/models/game.dart';
import 'package:super_plus/models/list.dart';

final queryGameCategory = http.post(
  "/_front_api_/game/info",
  model: GameCategory.fromJson,
);

final queryGameByPlatform = http.get(
  "/staticJs/game/{allFile}",
  model: listModel(GamePlatformModel.fromJson),
  raw: true,
);
