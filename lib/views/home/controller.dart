import 'package:get/get.dart';
import 'package:telegram/views/home/state.dart';

class HomeController extends GetxController {
  HomeController();
  final state = HomeState();

  _initData() {
    update(["home"]);
  }

  void onTap() {}

  // @override
  @override
  void onInit() {
    super.onInit();
  }

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
