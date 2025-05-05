import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:telegram/gen/assets.gen.dart';
import 'package:telegram/widgets/gridview/GridDelegateWithSpan.dart';
import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    final users = controller.state.fakeUsers;
    return Skeletonizer(
      enabled: false,
      ignoreContainers: true,
      switchAnimationConfig: SwitchAnimationConfig(
        duration: Duration(seconds: 3),
      ),
      child: GridView.builder(
        gridDelegate: GridDelegateWithSpan(
          childAspectRatio: 132 / 146,
          crossAxisCount: 3,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.w,
          span: (index) {
            if (index == 0) {
              return Span(col: 2);
            }
            return null;
          },
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            splashColor: Colors.amber,
            title: Text(
              'The title goes here',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('Subtitle here'),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: Assets.images.logo.svg(),
            leadingWidth: 400.w,

            surfaceTintColor: Colors.transparent, // 设置表面颜色为透明
            scrolledUnderElevation: 0.0, // 去除滚动时的阴影
            forceMaterialTransparency: true,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent, // 设置状态栏背景颜色
              statusBarIconBrightness: Brightness.light, // 设置状态栏图标颜色为白色
              statusBarBrightness: Brightness.dark, // 设置状态栏文字颜色为深色（仅适用于iOS）
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color(0xff044a48), Color(0xff1a1859)],
                center: Alignment.topCenter,
                radius: 1.0,
                stops: const [0.0, 1.0],
              ), // 渐变背景
            ),
            child: SafeArea(child: _buildView()),
          ),
        );
      },
    );
  }
}
