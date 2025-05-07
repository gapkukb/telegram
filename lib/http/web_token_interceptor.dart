part of 'http.dart';

class TokenManager {
  static String? _token;
  static String? _u2token;

  String? get token => _token;
  String? get u2token => _u2token;

  setToken(String webToken) {
    final map = jsonDecode(stringToBase64.decode(webToken));
    _token = map["token"];
    _u2token = map["u2token"];
  }
}

final webTokenOptions = Options(extra: {"__webToken": true});

final _tokenManager = TokenManager();

class WebTokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (_tokenManager.token != null) return handler.next(options);
    if (options.extra['__webToken'] == webTokenOptions.extra!['__webToken']) {
      return handler.next(options);
    }
    final resp = await queryWebToken();
    _tokenManager.setToken(resp['info']);

    return handler.next(options);
  }
}
