part of '../http.dart';

class _HTTP {
  late final Dio _dio;
  late final HTTPMethod get;
  late final HTTPMethod post;
  late final HTTPMethod put;
  late final HTTPMethod delete;

  _HTTP() {
    _dio = Dio(baseOptions);
    _dio.interceptors
      ..add(HttpInterceptorLoading())
      // ..add(WebTokenInterceptor())
      ..add(HttpInterceptorBiz())
      ..add(HttpInterceptorInflate())
      ..add(HttpInterceptorNormalizer())
      ..add(HttpInterceptorErrorToast());

    get = HTTPMethod("GET", _dio);
    post = HTTPMethod("POST", _dio);
    put = HTTPMethod("PUT", _dio);
    delete = HTTPMethod("DELETE", _dio);
  }
}

final http = _HTTP();
