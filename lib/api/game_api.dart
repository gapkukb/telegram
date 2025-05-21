import 'dart:convert';
import 'package:super_plus/http/http.dart';
import 'package:super_plus/models/game.dart';

final queryGameCategory = http.post(
  "/_front_api_/game/info",
  model: GameCategory.fromJson,
);

final queryGameByPlatform = http.get(
  "/staticJs/game/{allFile}",
  model: (String data) {
    final json = List<Map<String, dynamic>>.from(jsonDecode(data));
    return json.map(GamePlatformModel.fromJson).toList();
  },
  raw: true,
);
