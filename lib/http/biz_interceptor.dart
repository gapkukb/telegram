part of 'http.dart';

final _common = {"productId": "C66", "tenant": "AP", "client": "h5"};

String _qid() {
  final now = DateTime.now().millisecondsSinceEpoch;
  final sixDigitNumber = Random().nextInt(900000) + 100000;
  final str = "$now$sixDigitNumber";
  return md5.convert(utf8.encode(str)).toString();
}

String _sign(String qid, Map data, TokenManager manger) {
  final s = jsonEncode(data).split('')..sort();
  var ss = s.reversed.join('');

  ss += qid;
  ss += "C66H501";
  ss += "1.0.0";

  if (manger.token != null) {
    ss += manger.token!;
    ss += manger.u2token!;
  }

  return md5.convert(utf8.encode(ss)).toString();
}

class BizInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final qid = _qid();
    options.data?.addAll(_common);
    options.data ??= _common;

    options.headers["qid"] = qid;
    options.headers['Sign'] = _sign(qid, options.data, _tokenManager);
    options.headers['token'] = _tokenManager.token;

    super.onRequest(options, handler);
  }
}
