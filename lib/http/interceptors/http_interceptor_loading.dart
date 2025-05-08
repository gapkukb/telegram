part of '../http.dart';

class HttpInterceptorLoading extends Interceptor {
  int loadingCount = 0;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra[loadingKey] == true && ++loadingCount == 1) {
      print("Loading...");
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _handler(response.requestOptions);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _handler(err.requestOptions);
    super.onError(err, handler);
  }

  _handler(RequestOptions requestOptions) {
    if (requestOptions.extra[loadingKey] == true) {
      loadingCount--;
      if (loadingCount == 0) {
        // Hide loading indicator
        print("Loading complete");
      }
    }
  }
}
