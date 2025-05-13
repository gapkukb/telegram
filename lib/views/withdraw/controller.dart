import 'package:get/get.dart';

class WithdrawController extends GetxController {
  WithdrawController();

  _initData() {
    update(["withdraw"]);
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
