import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:iconify_flutter/icons/quill.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import '../index.dart';
// import './test.dart';

class DashboardFooterWidget extends GetView<DashboardController> {
  const DashboardFooterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 12, color: Colors.black),
      child: CurvedNavigationBar(
        // backgroundColor: Colors.blueAccent,
        height: 56,
        iconPadding: 4,
        letIndexChange: controller.changePage,
        items: [
          CurvedNavigationBarItem(
            child: Badge(label: Text('999'), child: Icon(Icons.home_outlined)),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Iconify(Quill.gift),
            label: 'Promotions',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.sports_esports_outlined),
            label: 'Games',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.loyalty_outlined),
            label: 'Favorite',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person_outline),
            label: 'Me',
          ),
        ],
        onTap: (index) {
          // Handle button tap
        },
      ),
    );
  }
}
