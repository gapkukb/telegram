import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/pages/home/index.dart';

class HomeAppBar extends GetView<HomeController>
    implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Assets.images.logo.svg(),
      leadingWidth: 400,
      surfaceTintColor: Colors.transparent, // 设置表面颜色为透明
      scrolledUnderElevation: 0.0, // 去除滚动时的阴影
      forceMaterialTransparency: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 设置状态栏背景颜色
        statusBarIconBrightness: Brightness.light, // 设置状态栏图标颜色为白色
        statusBarBrightness: Brightness.dark, // 设置状态栏文字颜色为深色（仅适用于iOS）
      ),

      actions: [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(38);
}
