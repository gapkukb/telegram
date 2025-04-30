import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class GamesPage extends GetView<GamesController> {
  const GamesPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GamesController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("games")),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
