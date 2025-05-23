import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/models/game.dart';
import 'package:super_plus/pages/games/index.dart';
import 'package:super_plus/pages/games/widgets/game_platform_list.dart';

class GamePlatform extends GetView<GamesController> {
  final List<Detail>? tabs;
  final bool loading;
  const GamePlatform(this.loading, this.tabs, {super.key});

  @override
  Widget build(BuildContext context) {
    final tabs_ =
        loading ? [Detail(tabName: "tabName", sort: 1, createAt: 1)] : tabs;

    if (tabs_ == null) return const Text("no data");

    return DefaultTabController(
      length: tabs_.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: const TextStyle(color: Color(0xff8286a3)),
            indicatorColor: const Color(0xffff5800),
            tabs: List.generate(tabs_.length, (index) {
              return Tab(text: tabs_[index].tabName, height: 40);
            }),
          ),

          Expanded(
            child: ExtendedTabBarView(
              // cacheExtent: tabs_.length,
              children: List.generate(tabs_.length, (index) {
                return GamePlatformList(loading, tabs_[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
