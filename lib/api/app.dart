import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:telegram/http/http.dart';

Future<dynamic> webToken() =>
    http.post("/_glaxy_c66_/webToken", options: webTokenOptions);
Future<dynamic> siteinfo() => http.post("/_glaxy_c66_/front/siteinfo");
Future<Response<dynamic>> queryCompressedMatchList() => http.post(
  "/_front_api_/saba/queryCompressedMatchList",
  data: {"matchListDate": "in-play", "sportTypeId": "2"},
  options: Options(responseType: ResponseType.bytes),
);

void main(List<String> args) {
  queryCompressedMatchList()
      .then((response) {
        print(response.data);
      })
      .catchError((error) {
        print(error);
      });
}
