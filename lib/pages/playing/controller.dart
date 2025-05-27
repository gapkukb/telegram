part of 'index.dart';

class PlayingController extends GetxController {
  PlayingController();

  final url =
      "https://wbgame.mukvmxqx.com/fullhousejp/?ssoKey=53e78a53b29f6fa483623416515a58439318dd97&lang=en-US&apiId=1628&be=moc.xqxmvkum.ipabewbw&domain_gs=xqxmvkum&domain_platform=moc.xqxmvkum.mroftalp-tolsbw&gameID=471&gs=moc.xqxmvkum.df-tolsbw&legalLang=true";

  late final WebViewController webview;
  final showHeader = true.obs;

  void toggle() {
    showHeader.value = !showHeader.value;
  }

  void loadGame() {
    // webview.loadRequest(Uri.parse(url));
    webview.reload();
  }

  @override
  void onInit() {
    super.onInit();

    webview =
        WebViewController()
          ..enableZoom(false)
          // ..clearCache()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.white)
          // ..setNavigationDelegate(
          //   NavigationDelegate(
          //     onProgress: (progress) {},
          //     onPageFinished: (progress) {},
          //     onPageStarted: (progress) {},
          //   ),
          // )
          ..loadRequest(Uri.parse(url));

    Future.delayed(const Duration(seconds: 3)).whenComplete(toggle);

    // loadGame();
  }
}
