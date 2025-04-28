import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram/views/home/bindings.dart';
import 'package:telegram/views/home/index.dart';
import 'package:telegram/views/me/index.dart';
import 'package:telegram/views/promo/index.dart';
import 'index.dart';

class DashboardController extends GetxController {
  // DashboardController();

  final state = DashboardState();
  final current = 0.obs;
  final pages = <String>["/", "/promo", "/me"];

  void changePage(int index) {
    if (current.value == index) return;
    current.value = index;
    Get.offAndToNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == "/") {
      return GetPageRoute(
        popGesture: true,
        settings: settings,
        page: () => const HomePage(),
        binding: HomeBinding(),
      );
    }
    if (settings.name == "/promo") {
      return GetPageRoute(
        popGesture: true,
        settings: settings,
        page: () => const PromoPage(),
        binding: PromoBinding(),
      );
    }
    if (settings.name == "/me") {
      return GetPageRoute(
        popGesture: true,
        settings: settings,
        page: () => const MePage(),
        binding: MeBinding(),
      );
    }
    return null;
  }

  // tap
  void handleTap(int index) {
    Get.snackbar("标题", "消息");
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
