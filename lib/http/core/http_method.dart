part of '../http.dart';

class HTTPMethod {
  final String method;
  final Dio dio;

  HTTPMethod(this.method, this.dio);

  HTTPExecutor<T, Q> call<T, Q>(
    String path, {
    Model<T, Q>? model,
    bool? cancellable,
    bool? loading,
    bool? silent,
    bool? raw,
    Options? options,
  }) {
    return HTTPExecutor(
      method: method,
      dio: dio,
      path: path,
      model: model,
      options: options,
      loading: loading,
      silent: silent,
      raw: raw,
      cancellable: cancellable,
    );
  }
}
