part of 'http.dart';

class HTTPExecutor<T> {
  final HttpOtpions? options;
  final String method;
  final Dio dio;
  final String path;
  final cancelToken = CancelToken();

  HTTPExecutor({required this.method, required this.dio, required this.path, this.options});

  Future<T> call([final Map<String, dynamic>? payload, final HttpOtpions? options]) {
    final data = method == "POST" || method == "PUT" ? payload : null;
    final params = data == null ? payload : null;

    final finals = _assign(this.options, options);
    final extra = {"cancellable": finals.cancellable, "loading": finals.loading, "silent": finals.silent};

    finals.method = method;
    finals.extra?.addAll(extra);
    finals.extra ??= extra;

    return dio.request(path, data: data, queryParameters: params, onReceiveProgress: finals.onReceiveProgress, cancelToken: cancelToken, onSendProgress: finals.onSendProgress, options: finals).then((value) {
      if (finals.model == null) return value.data;
      return finals.model!(value.data);
    });
  }

  abort([Object? reson]) {
    cancelToken.cancel(reson);
  }

  HttpOtpions _assign(HttpOtpions? outer, HttpOtpions? inner) {
    if (outer == null && inner == null) return HttpOtpions();
    if (outer == null) return inner!;
    return outer.merge(inner);
  }
}
