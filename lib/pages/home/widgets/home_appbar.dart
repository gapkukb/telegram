import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/pages/home/widgets/home_broadcast.dart';
import 'package:super_plus/widgets/icon_plus.dart';
import 'package:super_plus/widgets/text_plus.dart';

class HomeAppBar extends GetView<HomeController>
    implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xffe2d6ff),
      pinned: true,
      floating: true,
      leading: UnconstrainedBox(
        child: GFButton(
          onPressed: () {},
          shape: GFButtonShape.pills,
          size: 36,
          color: Color(0xffd8cef2),
          textColor: Color(0xff5f4e41),
          child: TextPlus('SIGN IN', bold: true),
        ),
      ),
      leadingWidth: 80,
      // surfaceTintColor: Colors.transparent, // 设置表面颜色为透明
      // scrolledUnderElevation: 0.0, // 去除滚动时的阴影
      // forceMaterialTransparency: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 设置状态栏背景颜色
        statusBarIconBrightness: Brightness.light, // 设置状态栏图标颜色为白色
        statusBarBrightness: Brightness.dark, // 设置状态栏文字颜色为深色（仅适用于iOS）
      ),

      actions: [
        GFButton(
          onPressed: () {},
          shape: GFButtonShape.square,
          size: 36,
          color: Color(0xffd8cef2),
          icon: IconPlus(
            Icons.support_agent_outlined,
            color: Color(0xffd8cef2),
          ),
        ),
      ],
      // collapsedHeight: 200,
      // expandedHeight: 400,
      // stretch: true,
      // flexibleSpace: Container(
      //   height: 400,
      //   alignment: Alignment(0, -0.4),
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       alignment: Alignment.topCenter,
      //       fit: BoxFit.fitWidth,
      //       image: AssetImage("assets/images/unlogin-banner.png"),
      //     ),
      //   ),
      //   child: HomeBroadcast(),
      // ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(38);
}
