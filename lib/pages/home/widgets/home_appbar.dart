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
    return PreferredSize(
      preferredSize: Size.fromHeight(76),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: AppBar(
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

          actions: [
            SizedBox(
              height: 60,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.zero),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                child: Text("Sign In"),
              ),
            ),
            SizedBox(
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: LinearGradient(
                    colors: [Color(0xffff2700), Color(0xffff00ba)],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  child: Text("Sign In"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(38);
}
