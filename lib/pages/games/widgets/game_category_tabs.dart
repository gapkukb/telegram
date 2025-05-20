import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/pages/games/index.dart';

class GameCategoryTabs extends GetView<GamesController>
    implements PreferredSizeWidget {
  const GameCategoryTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      bottom: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        // indicatorSize: TabBarIndicatorSize.tab,
        automaticIndicatorColorAdjustment: false,
        // indicator: const ColorTabIndicator(Colors.green),
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        padding: Gutter.zero,
        labelPadding: Gutter.horizontal.xxs,
        tabs:
            controller.gameTabs.tabs.map((tab) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: controller.tabIndex == 0 ? Colors.red : Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Tab(height: 32, child: Text(tab.name)),
              );
            }).toList(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
