part of 'http.dart';

class NormalizeResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data['head']?['errCode'] == '0000') {
      response.data = response.data['body'];
      return handler.resolve(response);
    }
    return handler.reject(DioException(requestOptions: response.requestOptions, response: response, type: DioExceptionType.badResponse, error: response.data['errMsg']));
  }
}
