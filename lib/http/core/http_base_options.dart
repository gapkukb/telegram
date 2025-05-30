part of '../http.dart';

typedef Dictionary<T> = Map<String, T>;
typedef Model<T, Q> = T Function(Q);

final baseOptions = BaseOptions(
  baseUrl: 'https://autotest.arenaplus.ph',
  connectTimeout: const Duration(seconds: 20),
  receiveTimeout: const Duration(seconds: 0),
  sendTimeout: const Duration(seconds: 20),
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
