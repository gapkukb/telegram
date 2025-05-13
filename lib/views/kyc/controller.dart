import 'package:get/get.dart';

class KycController extends GetxController {
  KycController();

  _initData() {
    update(["kyc"]);
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
