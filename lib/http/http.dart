import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:super_plus/api/app.dart';
import 'package:super_plus/helpers/string.dart';
import 'package:super_plus/models/game.dart';

part 'base_options.dart';
part 'biz_interceptor.dart';
part 'web_token_interceptor.dart';
part 'inflate_interceptor.dart';
part 'normalize_response_interceptor.dart';
part 'test.dart';

typedef Dictionary<T> = Map<String, T>;
typedef Executor<T> = Future<T> Function([Map<String, dynamic>?, Options?]);
typedef Decoder<T> = T Function(Map<String, dynamic>);
typedef Method<T> = Executor<T> Function<T>(String, [Decoder<T>?, Options?]);

class HTTP {
  late final Dio dio;
  late final Method get;
  late final Method post;
  late final Method put;
  late final Method delete;

  HTTP() {
    dio = Dio(baseOptions);
    dio.interceptors
      ..add(WebTokenInterceptor())
      ..add(BizInterceptor())
      ..add(InflateInterceptor())
      ..add(NormalizeResponseInterceptor())
      ..add(TestInterceptor());

    get = _spawn("get");
    post = _spawn("post");
    put = _spawn("put");
    delete = _spawn("delete");
  }

  Method _spawn(String method) {
    return <T>(final String path, [final Decoder<T>? decode, final Options? outerOptions]) {
      return ([final Map<String, dynamic>? payload, Options? options]) {
        final data = method == "post" || method == "put" ? payload : null;
        final params = data == null ? payload : null;

        options = _mergeOption(outerOptions, options) ?? Options();
        options.method = method;

        return dio.request(path, data: data, queryParameters: params, options: options).then((value) {
          if (decode == null) return value.data;
          return decode(value.data);
        });
      };
    };
  }

  Options? _mergeOption(Options? outer, Options? inner) {
    if (outer == null) return inner;
    if (inner == null) return outer;

    return inner.copyWith(
      method: outer.method,
      sendTimeout: outer.sendTimeout,
      receiveTimeout: outer.receiveTimeout,
      extra: outer.extra,
      headers: outer.headers,
      preserveHeaderCase: outer.preserveHeaderCase,
      responseType: outer.responseType,
      contentType: outer.contentType,
      validateStatus: outer.validateStatus,
      receiveDataWhenStatusError: outer.receiveDataWhenStatusError,
      followRedirects: outer.followRedirects,
      maxRedirects: outer.maxRedirects,
      persistentConnection: outer.persistentConnection,
      requestEncoder: outer.requestEncoder,
      responseDecoder: outer.responseDecoder,
      listFormat: outer.listFormat,
    );
  }
}

final http = HTTP();
