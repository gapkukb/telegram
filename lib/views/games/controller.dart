import 'package:get/get.dart';

class GamesController extends GetxController {
  static const gamesTypes = ["slot", "poker", "casino", "bingo", "arcade"];
  RxString active = RxString("slot");
  RxInt count = RxInt(0);
  GamesController();

  _initData() {
    update(["games"]);
  }

  void onTap(String type) {
    active.value = type;
    print(type);
  }

  void increment() {
    count++;
  }

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
