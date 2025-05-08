import 'package:super_plus/http/http.dart';
import 'package:super_plus/models/game.dart';

final queryWebToken = http.post("/_glaxy_c66_/webToken", options: webTokenOptions);
final queryApplication = http.post("/_glaxy_c66_/front/siteinfo");
final queryGameCategory = http.post("/_front_api_/game/info1", model: GameCategory.fromJson, loading: true, cancellable: true);

void main(List<String> args) {
  queryGameCategory().then((value) {
    print(value);
    print(value.gameKey);
  });

  // queryGameCategory.abort();
}
