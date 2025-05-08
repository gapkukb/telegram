import 'package:dio/dio.dart';
// import 'package:get/get.dart' as getx;

final Map<String, dynamic> httpErrorsText = {
  "400": "Network error - 400",
  "401": (Response resp) {
    // getx.Get.to(Routes.login.name);
    return "Network error - 401";
  },
  "403": "Network error - 403",
  "404": "Network error - 404",
  "405": "Network error - 405",
  "408": "Network error - 408",
  "500": "Network error - 500",
  "501": "Network error - 501",
  "502": "Network error - 502",
  "503": "Network error - 503",
  "504": "Network error - 504",
};
