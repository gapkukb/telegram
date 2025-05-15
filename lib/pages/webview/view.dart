part of 'index.dart';

class WebviewView extends GetView<WebviewController> {
  const WebviewView({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("WebviewPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WebviewController>(
      init: WebviewController(),
      id: "webview",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("Webview")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
