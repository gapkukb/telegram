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
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/user_bg.png'),
                fit: BoxFit.none,
                alignment: Alignment(0.0, -1),
                scale: 0.73,
              ),
            ),
            child: ListView(
              padding: Gutter.horizontal.xs,
              children: [
                // SliverToBoxAdapter(child: const Unauthentication()),
                MeSynopsis(),

                SizedBox(height: Gutter.sm),

                MeBalance(),

                SizedBox(height: Gutter.sm),

                MeMainMenu(),

                SizedBox(height: Gutter.sm),

                SizedBox(
                  width: 100,
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 15,
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
                                height: 28,
                              ),
                              Text("Gcash", style: TextStyle(fontSize: 12)),
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
                    mainAxisExtent: 40,
                    crossAxisSpacing: Gutter.xs,
                    mainAxisSpacing: Gutter.xs,
                  ),
                  children: List.generate(6, (index) {
                    return ChipButton(text: "+5,000", selected: index == 0);
                  }),
                ),

                SizedBox(height: 24),

                CellGroup(
                  children: [
                    Cell(title: "Invite Friends", isLink: true),
                    Cell(title: "Invite Friends", isLink: true),
                    Cell(title: "Invite Friends", isLink: true),
                  ],
                ),

                SizedBox(height: 24),

                GFButton(
                  onPressed: () {},
                  blockButton: true,
                  color: Colors.red,
                  size: 44,
                  shape: GFButtonShape.standard,
                  child: Text("LOG OUT", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        );
      },
    );
  }
}
