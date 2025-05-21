import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';

import '../index.dart';

class MeMainMenu extends GetView<MeController> {
  const MeMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navList = [
      {"icon": "assets/icons/icon_1.png", "name": "Funds"},
      {"icon": "assets/icons/icon_2.png", "name": "Transcations"},
      {"icon": "assets/icons/icon_3.png", "name": "Rewards"},
      {"icon": "assets/icons/icon_4.png", "name": "Points"},
    ];

    return Card(
      color: Colors.white.withAlpha(220),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Gutter.xxs),
      ),
      margin: Gutter.zero,
      child: Padding(
        padding: Gutter.vertical.xs,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              navList.map((nav) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(nav['icon']!, width: 48, height: 48),
                      Text(nav['name']!, style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
