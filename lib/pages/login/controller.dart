part of 'index.dart';

class LoginController extends GetxController {
  final agreement = false.obs;
  final isVerifyMode = true.obs;
  final pixel = 210.0.obs;
  final formKey = GlobalKey<FormState>();
  final payload = LoginQO();

  LoginController();

  void toggleMode() {
    isVerifyMode.value = !isVerifyMode.value;
  }

  Future<bool> prevalidate() async {
    final state = formKey.currentState!;
    if (!state.validate()) return false;
    state.save();
    if (!agreement.value) {
      final confirmed = await dialog<bool?>(LoginAgreementConfirmation());
      agreement.value = confirmed ?? false;
    }

    if (!agreement.value) return false;

    final ok = await dialogPuzzleCaptcha<bool?>() ?? false;

    if (!ok) return false;

    return true;
  }

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
