part of '../http.dart';

class HttpInterceptorPathRewrite extends Interceptor {
  static final re = RegExp(r"(\{(\w+)\})");
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final Map data =
        (options.method == "POST" || options.method == "PUT")
            ? options.data
            : options.queryParameters;

    options.path = options.path.replaceAllMapped(re, (match) {
      final key = match[2];
      final value = data[match[2]];
      if (value == null) return key!;
      data.remove(key);
      return value;
    });

    super.onRequest(options, handler);
  }
}
