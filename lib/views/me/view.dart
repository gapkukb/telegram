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
import 'package:super_plus/views/me/widgets/app_bar.dart';
import 'package:super_plus/views/me/widgets/balance.dart';
import 'package:super_plus/views/me/widgets/me_promo.dart';
import 'package:super_plus/views/me/widgets/synopsis.dart';
import 'package:super_plus/views/me/widgets/main_menu.dart';
import 'package:super_plus/views/me/widgets/unauthentication.dart';
import 'package:iconify_flutter/icons/wpf.dart';
import 'package:iconify_flutter/icons/map.dart';
import 'package:iconify_flutter/icons/cib.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:super_plus/widgets/cell.dart';
import 'package:super_plus/widgets/cell_group.dart';
import 'package:super_plus/widgets/chip_button.dart';
import 'index.dart';

class MePage extends GetView<MeController> {
  const MePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeController>(
      builder: (_) {
        return Scaffold(
          appBar: MeAppBar(),
          body: ListView(
            // padding: Gutter.horizontal.xs,
            children: [
              DecoratedBox(
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/user_bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0, -1),
                    scale: 0.4,
                  ),
                ),
                child: Padding(
                  padding: Gutter.horizontal.xs,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // SliverToBoxAdapter(child: const Unauthentication()),
                      MeSynopsis(),

                      SizedBox(height: Gutter.xs),

                      MeBalance(),

                      SizedBox(height: Gutter.xs),

                      MeMainMenu(),
                    ],
                  ),
                ),
              ),

              SizedBox(height: Gutter.xs),

              const MePromo(),

              SizedBox(height: Gutter.xs),

              SizedBox(
                height: 36,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: Gutter.horizontal.xs,
                  itemCount: 2,
                  separatorBuilder:
                      (context, index) => SizedBox(width: Gutter.xs),
                  itemBuilder: (context, index) {
                    final selected = true;
                    final color = selected ? Colors.white : Colors.black;
                    final bgcolor = selected ? Colors.red : Colors.white;

                    return FilledButton.tonalIcon(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: bgcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Gutter.xxs),
                          side: BorderSide(color: color),
                        ),
                      ),

                      label: Text("Gcash", style: TextStyle(color: color)),
                      icon: Iconify(Wpf.add_image, size: 16, color: color),
                    );
                  },
                ),
              ),
              SizedBox(height: Gutter.xs),
              GridView(
                primary: false,
                shrinkWrap: true,
                padding: Gutter.horizontal.xs,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 40,
                  crossAxisSpacing: Gutter.xs,
                  mainAxisSpacing: Gutter.xs,
                ),
                children: List.generate(6, (index) {
                  return ChipButton(text: "+5,000", selected: index == 0);
                }),
              ),

              SizedBox(height: Gutter.xs),

              CellGroup(
                inset: true,
                children: [
                  Cell(
                    onTap: () {
                      Get.toNamed('/share');
                    },
                    title: "邀请好友",
                    value: "分享有礼",
                    isLink: true,
                  ),
                  Cell(title: "我的权益", isLink: true),
                  Cell(title: "KYC认证", isLink: true),
                ],
              ),

              SizedBox(height: Gutter.xxl),

              Padding(
                padding: Gutter.horizontal.xs,
                child: GFButton(
                  onPressed: () {},
                  blockButton: true,
                  color: Colors.red,
                  size: 44,
                  shape: GFButtonShape.standard,
                  child: Text("LOG OUT", style: TextStyle(fontSize: 18)),
                ),
              ),
              SizedBox(height: Gutter.xs),
            ],
          ),
        );
      },
    );
  }
}
