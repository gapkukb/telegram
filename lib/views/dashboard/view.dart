import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/router/router.dart';
import 'package:super_plus/services/app_service.dart';
import 'package:super_plus/views/aside/index.dart';
import 'package:super_plus/views/dashboard/widgets/footer.dart';

import 'index.dart';
import 'widgets/widgets.dart';

const double blur = 2.0;

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (_) {
        return Scaffold(
          // extendBody: true,
          key: controller.appService.dashboradKey,
          // appBar: AppBar(title: const Text("dashboard")),
          body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: controller.pages.elementAt(0).name,
            onGenerateRoute: controller.onGenerateRoute,
          ),
          bottomNavigationBar: const DashboardFooterWidget(),
          drawer: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: const Drawer(
              backgroundColor: Color(0xffeeeeee),
              child: AsidePage(),
            ),
          ),
        );
      },
    );
  }
}
