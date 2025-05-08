part of 'http.dart';

class HttpOtpions<T> extends Options {
  final ResponseModel<T>? model;
  final bool? cancellable;
  final bool? loading;
  final bool? silent;
  final void Function(int, int)? onSendProgress;
  final void Function(int, int)? onReceiveProgress;

  HttpOtpions({super.method, super.sendTimeout, super.receiveTimeout, super.extra, super.headers, super.preserveHeaderCase, super.responseType, super.contentType, super.validateStatus, super.receiveDataWhenStatusError, super.followRedirects, super.maxRedirects, super.persistentConnection, super.requestEncoder, super.responseDecoder, super.listFormat, this.model, this.cancellable, this.loading, this.silent, this.onSendProgress, this.onReceiveProgress});

  HttpOtpions merge(HttpOtpions? options) {
    if (options == null) return HttpOtpions();

    return HttpOtpions(
      method: options.method ?? method,
      sendTimeout: options.sendTimeout ?? sendTimeout,
      receiveTimeout: options.receiveTimeout ?? receiveTimeout,
      extra: options.extra ?? extra,
      headers: options.headers ?? headers,
      preserveHeaderCase: options.preserveHeaderCase ?? preserveHeaderCase,
      responseType: options.responseType ?? responseType,
      contentType: options.contentType ?? contentType,
      validateStatus: options.validateStatus ?? validateStatus,
      receiveDataWhenStatusError: options.receiveDataWhenStatusError ?? receiveDataWhenStatusError,
      followRedirects: options.followRedirects ?? followRedirects,
      maxRedirects: options.maxRedirects ?? maxRedirects,
      persistentConnection: options.persistentConnection ?? persistentConnection,
      requestEncoder: options.requestEncoder ?? requestEncoder,
      responseDecoder: options.responseDecoder ?? responseDecoder,
      listFormat: options.listFormat ?? listFormat,
      cancellable: options.cancellable ?? this.cancellable,
      model: options.model ?? this.model,
      loading: options.loading ?? this.loading,
      silent: options.silent ?? this.silent,
      onSendProgress: options.onSendProgress ?? this.onSendProgress,
      onReceiveProgress: options.onReceiveProgress ?? this.onReceiveProgress,
    );
  }
}
