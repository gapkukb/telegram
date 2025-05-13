import 'package:get/get.dart';

class BanksController extends GetxController {
  BanksController();

  _initData() {
    update(["banks"]);
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
