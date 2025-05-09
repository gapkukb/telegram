import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/locales/locales.dart';
import 'package:super_plus/widgets/count_down_timer.dart';
import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    final users = controller.state.fakeUsers;
    return Skeletonizer(
      enabled: true,
      // ignoreContainers: true,
      containersColor: Colors.grey,
      switchAnimationConfig: SwitchAnimationConfig(duration: Duration(seconds: 3)),
      child: GridView.builder(
        padding: EdgeInsets.all(16.0.w),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 112 / 165, crossAxisCount: 3, crossAxisSpacing: 16.w, mainAxisSpacing: 16.w),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Material(
            borderRadius: BorderRadius.circular(16.0.w),
            clipBehavior: Clip.hardEdge,
            child: ListTile(
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.zero,
              tileColor: Colors.transparent,
              title: Image.network(
                user.avatar ?? '',
                fit: BoxFit.cover,
                // width: double.infinity,
                height: 280.w,
              ),
              subtitle: Padding(padding: EdgeInsets.symmetric(horizontal: 8.0.w), child: Text('Subtitle', maxLines: 1, overflow: TextOverflow.ellipsis)),
            ),
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
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [Color(0xff044a48), Color(0xff1a1859)], center: Alignment.topCenter, radius: 1.0, stops: const [0.0, 1.0]), // 渐变背景
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: false,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(76.w),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, bottom: 16.0.w),
                child: AppBar(
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

                  actions: [
                    SizedBox(height: 60.w, child: OutlinedButton(onPressed: () {}, style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero), shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0), side: BorderSide(color: Colors.red)))), child: Text("Sign In"))),
                    SizedBox(height: 60.w, child: DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0), gradient: LinearGradient(colors: [Color(0xffff2700), Color(0xffff00ba)])), child: TextButton(onPressed: () {}, style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero), shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0), side: BorderSide(color: Colors.red)))), child: Text("Sign In")))),
                  ],
                ),
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () async {},
              child: ListView(
                children: [
                  CarouselSlider.builder(
                    itemCount: 5,
                    options: CarouselOptions(aspectRatio: 8 / 3, enlargeFactor: 0.2, enlargeCenterPage: true, viewportFraction: 0.8, enableInfiniteScroll: 1 > 0),
                    itemBuilder:
                        (BuildContext context, int itemIndex, int pageViewIndex) => ClipRRect(
                          borderRadius: BorderRadius.circular(8.0.w),
                          child: CachedNetworkImage(
                            imageUrl: "https://picsum.photos/seed/4$itemIndex/600/200",
                            fit: BoxFit.cover,
                            placeholder: (context, url) {
                              return Container(color: Colors.grey.shade200);
                            },
                          ),
                        ),
                  ),
                  Obx(() => Text(controller.state.countup.value.toString(), style: TextStyle(color: Colors.white, fontSize: 20.w))),
                  Center(child: DefaultTextStyle(style: TextStyle(fontSize: 14, color: Colors.white), child: Obx(() => CountDownTimer(current: controller.state.countup.value)))),

                  FilledButton(onPressed: controller.countup, child: Text(LocalesKey.appAbout.tr)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
