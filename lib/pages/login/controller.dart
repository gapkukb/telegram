part of 'index.dart';

class LoginController extends GetxController {
  final agreement = false.obs;
  final isAccountMode = false.obs;
  final pixel = 210.0.obs;
  final formKey = GlobalKey<FormState>();
  final payload = LoginQO();

  LoginController();

  void login() async {
    return Get.showOverlay(
      asyncFunction: () async {
        if (!formKey.currentState!.validate()) return;
        await Future.delayed(Duration(seconds: 2));
      },
      loadingWidget: const CircularProgressIndicator(),
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
