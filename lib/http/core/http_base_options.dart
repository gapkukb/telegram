part of '../http.dart';

typedef Dictionary<T> = Map<String, T>;
typedef ResponseModel<T> = T Function(Map<String, dynamic>);

final baseOptions = BaseOptions(
  baseUrl: 'https://autotest.arenaplus.ph',
  connectTimeout: Duration(seconds: 5),
  receiveTimeout: Duration(seconds: 5),
  sendTimeout: Duration(seconds: 5),
  responseType: ResponseType.json,
  followRedirects: false,
  contentType: Headers.jsonContentType,
  headers: {
    // "Accept": "application/json",
    "appid": "C66H501",
    "domainname": "autotest.arenaplus.ph",
    "v": "1.0.0",
  },
);
