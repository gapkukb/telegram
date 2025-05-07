import 'dart:developer';

import 'package:super_plus/http/http.dart';
import 'package:super_plus/models/game.dart';

dynamic webToken() => http.post("/_glaxy_c66_/webToken", options: webTokenOptions) as dynamic;
Future<dynamic> siteinfo() => http.post("/_glaxy_c66_/front/siteinfo");
Future<dynamic> queryGameCategory() => http.post("/_front_api_/game/info");

void main(List<String> args) {
  queryGameCategory()
      .then((value) {
        final data = GameCategory.fromJson({});

        print(data.toJson());
        print(data.gameKey);
      })
      .catchError((e) {
        print(e);
      });
}
