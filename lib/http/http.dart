import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:super_plus/api/app.dart';
import 'package:super_plus/helpers/string.dart';

part 'base_options.dart';
part 'biz_interceptor.dart';
part 'web_token_interceptor.dart';
part 'inflate_interceptor.dart';
part 'normalize_response_interceptor.dart';
part 'test.dart';

Dio Http() {
  final dio = Dio(baseOptions);
  dio.interceptors
    // ..add(PrettyDioLogger(requestBody: true))
    ..add(WebTokenInterceptor())
    ..add(Bizinterceptor())
    ..add(InflateInterceptor())
    ..add(NormalizeResponseInterceptor())
    ..add(TestInterceptor());

  return dio;
}

final http = Http();
