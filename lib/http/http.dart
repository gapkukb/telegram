import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:telegram/api/app.dart';
import 'package:telegram/helpers/string.dart';

part 'base_options.dart';
part 'biz_interceptor.dart';
part 'web_token_interceptor.dart';

Dio Http() {
  final dio = Dio(baseOptions);
  dio.interceptors
    ..add(PrettyDioLogger(requestHeader: true))
    ..add(WebTokenInterceptor())
    ..add(Bizinterceptor());

  return dio;
}

final http = Http();
