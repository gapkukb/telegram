import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

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
        return PopScope(
          canPop: true,
          child: Scaffold(
            appBar: AppBar(title: const Text("dashboard")),
            body: Navigator(
              key: Get.nestedKey(1),
              initialRoute: '/',
              onGenerateRoute: controller.onGenerateRoute,
            ),
            bottomNavigationBar: Obx(
              () => BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Browse',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'History',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
                currentIndex: controller.current.value,
                onTap: controller.changePage,
              ),
            ),
          ),
        );
      },
    );
  }
}
