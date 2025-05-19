import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/pages/home/widgets/home_broadcast.dart';
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
      backgroundColor: Color(0xffe2d6ff),
      pinned: true,
      expandedHeight: 564,
      titleSpacing: 0,
      title: Container(
        height: 100,
        color: Color(0xffe5ddff),
        child: Row(
          children: [
            GFButton(
              onPressed: () {
                Get.toNamed(Routes.login);
              },
              shape: GFButtonShape.pills,
              size: 36,
              color: Color(0xffd8cef2),
              textColor: Color(0xff5f4e41),
              child: TextPlus('SIGN IN', bold: true),
            ),
            Spacer(),
            actionButton(() {}, Icons.support_agent),
            actionButton(() {}, Icons.search),
          ],
        ),
      ),
      foregroundColor: Colors.amber,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 设置状态栏背景颜色
        statusBarIconBrightness: Brightness.light, // 设置状态栏图标颜色为白色
        statusBarBrightness: Brightness.dark, // 设置状态栏文字颜色为深色（仅适用于iOS）
      ),
      flexibleSpace: FlexibleSpaceBar(background: HomeHeader()),
      bottom: HomeTabbar(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(38);

  Widget actionButton(void Function() onPressed, dynamic icon) {
    return IconButton(
      onPressed: onPressed,
      icon: IconPlus(icon, color: Color(0xff5f4e41)),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.black.withAlpha(13)),
      ),
    );
  }
}
