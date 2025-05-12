import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/router/router.dart';
import 'package:super_plus/views/me/widgets/unauthentication.dart';
import 'package:iconify_flutter/icons/wpf.dart';
import 'package:iconify_flutter/icons/map.dart';
import 'package:iconify_flutter/icons/cib.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'index.dart';

class MePage extends GetView<MeController> {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navList = [
      {"icon": "assets/icons/icon_1.png", "name": "Funds"},
      {"icon": "assets/icons/icon_2.png", "name": "Transcations"},
      {"icon": "assets/icons/icon_3.png", "name": "Rewards"},
      {"icon": "assets/icons/icon_4.png", "name": "Points"},
    ];

    return GetBuilder<MeController>(
      builder: (_) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actionsIconTheme: IconThemeData(color: Colors.white, size: 48.w),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              // andriod
              statusBarIconBrightness: Brightness.light,
              // ios
              statusBarBrightness: Brightness.light,
            ),
            automaticallyImplyLeading: false,
            title: Text(
              "个人中心",
              style: TextStyle(fontSize: 36.w, color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Iconify(
                  Ri.customer_service_2_line,
                  color: Colors.white,
                  size: 36.w,
                ),
              ),
              IconButton(
                onPressed: () {},
                // icon: Icon(Icons.dark_mode_outlined),
                icon: Icon(Icons.light_mode_outlined),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(Routes.settings.name, preventDuplicates: true);
                },
                icon: Icon(Icons.settings_outlined),
              ),
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/user_bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: ListView(
              padding: Gutter.horizontal.sm,
              children: [
                // SliverToBoxAdapter(child: const Unauthentication()),
                ListTile(
                  minLeadingWidth: 120.w,
                  leading: CircleAvatar(
                    radius: 60.w,
                    backgroundImage: CachedNetworkImageProvider(
                      "https://picsum.photos/seed/abd/200/200",
                    ),
                  ),
                  title: Text(
                    "这是一个超级长的用户昵称",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "上次登录时间：2020-12-12 10:00:00",
                    style: TextStyle(color: Colors.white.withAlpha(125)),
                  ),
                ),

                SizedBox(height: Gutter.lg),
                Container(
                  height: 206.w,
                  margin: Gutter.horizontal.lg,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(Gutter.sm),
                    // gradient: LinearGradient(colors: colors)
                    // image: DecorationImage(
                    //   image: AssetImage("assets/images/balance_card_image.png"),
                    //   fit: BoxFit.cover,
                    //   // opacity: 0.8,
                    // ),
                  ),
                  child: Padding(
                    padding: Gutter.horizontal.md,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 72.w,
                                child: TextButton.icon(
                                  onPressed: () {},
                                  iconAlignment: IconAlignment.end,
                                  label: Text(
                                    "Balance (PHP)",
                                    style: TextStyle(
                                      color: Color(0xff111111),
                                      fontSize: 24.w,
                                    ),
                                  ),
                                  icon: Icon(Icons.remove_red_eye_outlined),
                                ),
                              ),

                              TextButton.icon(
                                onPressed: null,
                                iconAlignment: IconAlignment.end,
                                label: Text(
                                  "100,221.01",
                                  style: TextStyle(
                                    color: Color(0xffff5800),
                                    fontSize: 48.w,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                icon: GestureDetector(
                                  onTap: () {
                                    print("object");
                                  },
                                  child: Icon(
                                    Icons.refresh,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.square,
                              size: GFSize.SMALL,
                              child: Text("充值"),
                            ),
                            GFButton(
                              onPressed: () {},
                              shape: GFButtonShape.standard,
                              size: GFSize.SMALL,
                              child: Text("提现"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:
                          navList.map((nav) {
                            return GestureDetector(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Image.asset(
                                    nav['icon']!,
                                    width: 96.w,
                                    height: 96.w,
                                  ),
                                  Text(
                                    nav['name']!,
                                    style: TextStyle(fontSize: 24.w),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),

                SizedBox(
                  width: 200.w,
                  height: 140.w,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        width: 200.w,
                        height: 30.w,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(Gutter.md),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/icons/icon_1.png",
                                height: 56.w,
                              ),
                              Text("Gcash", style: TextStyle(fontSize: 24.w)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                GridView(
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 5 / 2,
                    crossAxisSpacing: Gutter.sm,
                    mainAxisSpacing: Gutter.sm,
                  ),
                  children: List.generate(6, (index) {
                    return Material(
                      color: Colors.transparent,
                      type: MaterialType.button,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: Center(child: Text("+5,000")),
                    );
                  }),
                ),

                // _buildItem(Wpf.faq, "FAQ"),
                // _buildItem(Cib.about_me, "关于我们"),
                // _buildItem(Octicon.cache_16, "缓存", "10.GB"),
                // _buildItem(Ic.outline_contact_phone, "联系我们"),
                // _buildItem(Map.lawyer, "法律声明"),
                // _buildItem(Carbon.character_whole_number, "版本", "1.0.0"),
                SizedBox(height: 48.w),
                GFButton(
                  onPressed: () {},
                  blockButton: true,
                  color: Colors.red,
                  size: 96.w,
                  shape: GFButtonShape.standard,
                  child: Text("LOG OUT", style: TextStyle(fontSize: 36.w)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildItem(String icon, String title, [String? text]) {
    final arrowIcon = Icon(
      Icons.arrow_forward_ios_rounded,
      size: 36.w,
      color: Color(0xff8286a3),
    );
    return ListTile(
      onTap: () {},
      leading: Opacity(opacity: 0.7, child: Iconify(icon, size: 40.w)),
      contentPadding: EdgeInsets.only(left: 32.w, right: 16.w),
      shape: Border(
        bottom: BorderSide(width: 1, color: Colors.black.withAlpha(30)),
      ),
      dense: true,
      title: Text(title),
      trailing:
          text == null
              ? arrowIcon
              : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(text, style: TextStyle(color: Color(0xff8286a3))),
                  arrowIcon,
                ],
              ),
    );
  }
}
