import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          body: Container(
            color: Colors.amber,
            child: SizedBox(width: 100, height: 100),
          ),
        );
      },
    );
  }
}
