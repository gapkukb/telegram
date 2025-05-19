import 'package:super_plus/http/http.dart';

final querGameConfiguration = http.post("/_front_api_/game/info");
final querGamesByPlatform = http.post("/staticJs/game/{path}");
