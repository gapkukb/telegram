part of '../http.dart';

class HttpInterceptorNormalizer extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.extra[rawKey] == true) {
      return handler.resolve(response);
    }

    final head = response.data?['head'] ?? {};

    if (head['errCode'] == '0000') {
      response.data = response.data['body'] ?? {};
      return handler.resolve(response);
    }
    return handler.reject(
      DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
        error: head['errCode'],
        message: head['errMsg'],
        stackTrace: StackTrace.current,
      ),
      true,
    );
  }
}
