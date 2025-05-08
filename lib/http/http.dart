import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:super_plus/api/app.dart';
import 'package:super_plus/helpers/string.dart';

part 'http_options.dart';
part 'http_executor.dart';
part 'base_options.dart';
part 'biz_interceptor.dart';
part 'web_token_interceptor.dart';
part 'inflate_interceptor.dart';
part 'normalize_response_interceptor.dart';
part 'test.dart';

typedef Dictionary<T> = Map<String, T>;
typedef ResponseModel<T> = T Function(Map<String, dynamic>);
typedef HTTPMethod<T> = HTTPExecutor<T> Function<T>(String, [HttpOtpions<T>?]);

class HTTP {
  late final Dio _dio;
  late final HTTPMethod get;
  late final HTTPMethod post;
  late final HTTPMethod put;
  late final HTTPMethod delete;

  HTTP() {
    _dio = Dio(baseOptions);
    _dio.interceptors
      ..add(WebTokenInterceptor())
      ..add(BizInterceptor())
      ..add(InflateInterceptor())
      ..add(NormalizeResponseInterceptor())
      ..add(TestInterceptor());

    get = _create("GET");
    post = _create("POST");
    put = _create("PUT");
    delete = _create("DELETE");
  }

  HTTPMethod _create(String method) {
    return <T>(final String path, [final HttpOtpions<T>? options]) {
      return HTTPExecutor(method: method, dio: _dio, path: path, options: options);
    };
  }
}

final http = HTTP();
