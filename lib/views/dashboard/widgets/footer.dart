import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import '../index.dart';

class DashboardFooterWidget extends GetView<DashboardController> {
  const DashboardFooterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final children = [controller.state.a, controller.state.b, controller.state.c, controller.state.d];

    return Obx(() => BottomAppBar(height: 130.w, shape: CircularNotchedRectangle(), notchMargin: 6, clipBehavior: Clip.antiAlias, padding: EdgeInsets.zero, color: Colors.blue, child: BottomNavigationBar(type: BottomNavigationBarType.fixed, elevation: 0, currentIndex: controller.current.value, onTap: controller.changePage, backgroundColor: Theme.of(context).primaryColor.withAlpha(0), unselectedItemColor: Colors.amber, selectedItemColor: Colors.pink, items: children)));
  }
}
