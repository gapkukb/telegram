import 'package:get/get.dart';

import 'controller.dart';

class PromoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PromoController>(() => PromoController());
  }
}
