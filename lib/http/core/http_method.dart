part of '../http.dart';

class HTTPMethod {
  final String method;
  final Dio dio;

  HTTPMethod(this.method, this.dio);

  HTTPExecutor<T> call<T>(String path, {ResponseModel<T>? model, bool? cancellable, bool? loading, bool? silent, Options? options}) {
    return HTTPExecutor(method: method, dio: dio, path: path, model: model, options: options, loading: loading, silent: silent, cancellable: cancellable);
  }
}
