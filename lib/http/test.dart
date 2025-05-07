part of 'http.dart';

class TestInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('test test test test');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('errrrrrrrrrrrrrrrrrr');
    super.onError(err, handler);
  }
}
