import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/pages/games/index.dart';
import 'package:super_plus/widgets/text_plus.dart';

class GameCategoryTabs extends GetView<GamesController>
    implements PreferredSizeWidget {
  const GameCategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      // pinned: true,
      titleSpacing: 8.0,
      title: TabBar(
        controller: controller.ctrl,
        automaticIndicatorColorAdjustment: false,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        padding: Gutter.zero,
        labelPadding: Gutter.horizontal.xxs,
        indicator: BoxDecoration(
          color: const Color(0xffff5800),
          borderRadius: BorderRadius.circular(4.0),
        ),
        dividerHeight: 0,
        tabs: List.generate(controller.gameTabs.tabs.length, (index) {
          final tab = controller.gameTabs.tabs[index];

          return Obx(() {
            final active = controller.tabIndex.value == index;
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: active ? Colors.transparent : const Color(0xffe7e8f1),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Tab(
                height: 32,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: TextPlus(
                    tab.name.capitalize,
                    color: active ? Colors.white : const Color(0xff8286a3),
                    weight: FontWeight.w500,
                  ),
                ),
              ),
            );
          });
        }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
