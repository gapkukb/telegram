import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/router/router.dart';
import 'package:super_plus/services/app_service.dart';
import 'package:super_plus/views/home/bindings.dart';
import 'package:super_plus/views/home/index.dart';
import 'package:super_plus/views/me/index.dart';
import 'package:super_plus/views/promo/index.dart';
import 'index.dart';

class DashboardController extends GetxController {
  // DashboardController();

  final state = DashboardState();
  final current = 0.obs;
  final pages = <GetPage>[
    Routes.home,
    Routes.promo,
    Routes.games,
    Routes.favorite,
    Routes.me,
  ];
  final appService = Get.find<AppService>();

  bool changePage(int index) {
    if (current.value == index) return false;
    current.value = index;
    Get.toNamed(pages[index].name, id: 1);
    return true;
  }

  Route? onGenerateRoute(RouteSettings settings) {
    final page = pages.firstWhere(
      (page) => page.name == settings.name,
      orElse: () => pages[0],
    );

    return GetPageRoute(
      settings: settings,
      page: page.page,
      binding: page.binding,
    );
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
