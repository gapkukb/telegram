import 'package:flutter/material.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/text_plus.dart';

class HomeTabbar extends StatefulWidget implements PreferredSizeWidget {
  const HomeTabbar({super.key});

  @override
  _HomeTabbarState createState() => _HomeTabbarState();

  @override
  Size get preferredSize => Size.fromHeight(66);
}

class _HomeTabbarState extends State<HomeTabbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        padding: Gutter.zero,
        indicatorColor: Colors.red,
        labelColor: Colors.blue,
        dividerHeight: 0,
        labelPadding: Gutter.horizontal.xs,

        tabs: [
          tabIcon("Hot", "hom_tab_hot"),
          tabIcon("Slot", "hom_tab_slot"),
          tabIcon("Preya", "hom_tab_preya"),
          tabIcon("Bingo", "hom_tab_bingo"),
          tabIcon("Poker", "hom_tab_poker"),
          tabIcon("Casino", "hom_tab_casino"),
          tabIcon("Arcade", "hom_tab_arcade"),
          tabIcon("Sport", "hom_tab_sport"),
        ],
      ),
    );
  }

  Tab tabIcon(String tabName, String tabIcon) {
    return Tab(
      iconMargin: Gutter.zero,
      icon: Image.asset(
        "assets/images/$tabIcon.png",
        width: 28,
        height: 28,
        fit: BoxFit.contain,
      ),
      child: TextPlus(tabName, fontSize: 14),
    );
  }
}
