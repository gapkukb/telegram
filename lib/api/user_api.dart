import 'package:super_plus/http/http.dart';
import 'package:super_plus/models/user.dart';

final login = http.post("/_glaxy_c66_/userAuth/loginByPhoneV4");
final sendCode = http.post("/_glaxy_c66_/userAuth/loginSendSmsCode");
final queryPuzzle = http.post(
  "/_glaxy_c66_/hCaptcha/hGenerateCaptchaV2",
  model: PuzzleModel.fromJson,
);
final validatePuzzle = http.post("/_glaxy_c66_/hCaptcha/validateHCaptcha");
