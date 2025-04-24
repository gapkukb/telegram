import 'package:dio/dio.dart';
import 'package:telegram/http/http.dart';

Future<dynamic> webToken() => http.post("/webToken", options: webTokenOptions);
Future<dynamic> siteinfo() => http.post("/front/siteinfo");

void main(List<String> args) {
  siteinfo()
      .then((response) {
        print(response.data);
      })
      .catchError((error) {
        print(error);
      });
}
