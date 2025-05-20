part of '../http.dart';

class HttpInterceptorErrorToast extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // 取消不显示
    if (CancelToken.isCancel(err)) return;
    final resp = err.response;
    late final String? message;

    if (resp == null) {
      message = _parse("${err.type}", resp);
    } else if (resp.statusCode == 200) {
      message = err.message ?? _parse(err.error.toString(), resp);
    } else {
      message = _parse(resp.statusCode.toString(), resp);
    }

    if (message != null) {
      print('---------请求错误消息---------${err.requestOptions.path}');
      print(message);
    }

    super.onError(err, handler);
  }

  String? _parse(final String code, final Response? resp) {
    final message = httpErrorsText[code];
    if (message is String) return message;
    if (message is Function) return message(resp);
    return null;
  }
}
