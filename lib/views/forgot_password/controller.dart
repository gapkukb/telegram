import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  ForgotPasswordController();

  _initData() {
    update(["forgot_password"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
