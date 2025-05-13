import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class BanksPage extends GetView<BanksController> {
  const BanksPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("BanksPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BanksController>(
      init: BanksController(),
      id: "banks",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("banks")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
