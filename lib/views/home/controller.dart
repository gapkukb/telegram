import 'package:get/get.dart';
import 'package:telegram/models/user.dart';

class HomeController extends GetxController {
  HomeController();
  late User user;

  _initData() {
    update(["home"]);
  }

  void onTap() {}

  // @override
  void onInit() {
    super.onInit();
    user = User.fromJson({"name": "zhangsan"});
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
