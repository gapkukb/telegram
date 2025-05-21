import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/pages/home/widgets/home_header.dart';
import 'package:super_plus/pages/home/widgets/home_tabbar.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/widgets/icon_plus.dart';
import 'package:super_plus/widgets/text_plus.dart';

class HomeAppBar extends GetView<HomeController>
    implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 80,
      backgroundColor: const Color(0xffe2d6ff),
      pinned: true,
      expandedHeight: 564,
      titleSpacing: 0,
      title: Container(
        height: 100,
        color: const Color(0xffe5ddff),
        child: Row(
          children: [
            GFButton(
              onPressed: () {
                Get.toNamed(Routes.login);
              },
              shape: GFButtonShape.pills,
              size: 36,
              color: const Color(0xffd8cef2),
              textColor: const Color(0xff5f4e41),
              child: const TextPlus.bold('SIGN IN'),
            ),
            const Spacer(),
            actionButton(() {}, Icons.support_agent),
            actionButton(() {}, Icons.search),
          ],
        ),
      ),
      foregroundColor: Colors.amber,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 设置状态栏背景颜色
        statusBarIconBrightness: Brightness.light, // 设置状态栏图标颜色为白色
        statusBarBrightness: Brightness.dark, // 设置状态栏文字颜色为深色（仅适用于iOS）
      ),
      flexibleSpace: const FlexibleSpaceBar(background: HomeHeader()),
      bottom: const HomeTabbar(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(38);

  Widget actionButton(void Function() onPressed, dynamic icon) {
    return IconButton(
      onPressed: onPressed,
      icon: IconPlus(icon, color: const Color(0xff5f4e41)),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.black.withAlpha(13)),
      ),
    );
  }
}
