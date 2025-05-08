part of '../http.dart';

class HttpInterceptorNormalizer extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final head = response.data?['head'] ?? {};

    if (head['errCode'] == '0000') {
      response.data = response.data['body'] ?? {};
      return handler.resolve(response);
    }
    return handler.reject(DioException(requestOptions: response.requestOptions, response: response, type: DioExceptionType.badResponse, error: head['errCode'], message: head['errMsg'], stackTrace: StackTrace.current), true);
  }
}
