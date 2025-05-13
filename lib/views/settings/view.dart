import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/widgets/cell.dart';
import 'package:super_plus/widgets/cell_group.dart';

import 'index.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(title: const Text("settings")),
          body: ListView(
            children: [
              CellGroup(
                children: [
                  Cell(
                    onTap: () {},
                    iconWidget: Icon(Icons.access_alarm),
                    title: "设置",
                    value: "设置",
                    isLink: true,
                  ),
                  Cell(
                    onTap: () {},
                    iconWidget: Icon(Icons.access_alarm),
                    title: "设置",
                    value: "设置",
                    isLink: true,
                  ),
                  Cell(
                    onTap: () {},
                    iconWidget: Icon(Icons.access_alarm),
                    title: "设置",
                    isLink: true,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
