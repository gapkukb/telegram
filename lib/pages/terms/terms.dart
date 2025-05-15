import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsView extends StatefulWidget {
  const TermsView({super.key});

  @override
  _TermsViewState createState() => _TermsViewState();
}

class _TermsViewState extends State<TermsView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..enableZoom(false)
          ..clearCache()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onHttpAuthRequest: (request) {
                _controller.runJavaScript('window.webview=123;');
              },
              onPageStarted: (url) {
                _controller.runJavaScript('window.webview=456;');
              },
              onUrlChange: (change) {
                _controller.runJavaScript('window.webview=789;');
              },
              onProgress: (url) {
                _controller.runJavaScript('window.webview=666;');
              },
            ),
          )
          ..loadFlutterAsset('assets/web/terms.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text("Terms Of Use and Privacy Policy"),
        titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
