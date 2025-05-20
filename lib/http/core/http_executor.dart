part of '../http.dart';

class HTTPExecutor<T, Q> {
  final Options? options;
  final String method;
  final Dio dio;
  final String path;
  CancelToken? _cancelToken;
  final bool? cancellable;
  final bool? loading;
  final bool? silent;
  final bool? raw;
  final Model<T, Q>? model;

  HTTPExecutor({
    required this.method,
    required this.dio,
    required this.path,
    this.options,
    this.cancellable,
    this.loading,
    this.silent,
    this.model,
    this.raw,
  });

  Future<T> call({
    final Map<String, dynamic>? data,
    final bool? cancellable,
    final bool? loading,
    final bool? silent,
    final bool? raw,
    final void Function(int, int)? onSendProgress,
    final void Function(int, int)? onReceiveProgress,
    final Options? options,
  }) {
    final body = method == "POST" || method == "PUT" ? data : null;
    final params = body == null ? data : null;

    final finals = _assign(this.options, options);
    final extra = {
      cancellableKey: cancellable ?? this.cancellable,
      loadingKey: loading ?? this.loading,
      silentKey: silent ?? this.silent,
      rawKey: raw ?? this.raw,
    };

    finals.method = method;
    finals.extra?.addAll(extra);
    finals.extra ??= extra;

    if (extra[cancellableKey] == true) {
      _cancelToken = CancelToken();
    }

    return dio
        .request(
          path,
          data: body,
          queryParameters: params,
          onReceiveProgress: onReceiveProgress,
          cancelToken: _cancelToken,
          onSendProgress: onSendProgress,
          options: finals,
        )
        .then((value) {
          if (model == null) return value.data;
          return model!(value.data);
        });
  }

  abort([Object? reson]) {
    _cancelToken?.cancel(reson);
  }

  Options _assign(Options? outer, Options? inner) {
    if (outer == null && inner == null) return Options();
    if (outer == null) return inner!;
    if (inner == null) return outer.copyWith();
    return outer.copyWith(
      method: inner.method,
      sendTimeout: inner.sendTimeout,
      receiveTimeout: inner.receiveTimeout,
      extra: inner.extra,
      headers: inner.headers,
      preserveHeaderCase: inner.preserveHeaderCase,
      responseType: inner.responseType,
      contentType: inner.contentType,
      validateStatus: inner.validateStatus,
      receiveDataWhenStatusError: inner.receiveDataWhenStatusError,
      followRedirects: inner.followRedirects,
      maxRedirects: inner.maxRedirects,
      persistentConnection: inner.persistentConnection,
      requestEncoder: inner.requestEncoder,
      responseDecoder: inner.responseDecoder,
      listFormat: inner.listFormat,
    );
  }
}
