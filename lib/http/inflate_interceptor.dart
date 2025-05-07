part of 'http.dart';

class InflateInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.responseType == ResponseType.bytes) {}

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.responseType == ResponseType.bytes) {
      final inflated = zlib.decode(response.data);
      final data = utf8.decode(inflated);
      final d = json.decode(data);
      response.data = d;
    }
    super.onResponse(response, handler);
  }
}
