import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:super_plus/api/app.dart';
import 'package:super_plus/helpers/string.dart';

part 'base_options.dart';
part 'biz_interceptor.dart';
part 'web_token_interceptor.dart';
part 'normalize_interceptor.dart';

Dio Http() {
  final dio = Dio(baseOptions);
  dio.interceptors
    // ..add(PrettyDioLogger(requestBody: true))
    ..add(WebTokenInterceptor())
    ..add(Bizinterceptor())
    ..add(InflateInterceptor());

  return dio;
}

final http = Http();
