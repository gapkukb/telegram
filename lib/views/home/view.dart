import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    final name = controller.user.name;
    return Center(
      child: ElevatedButton(onPressed: () {}, child: Text("data123")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text("HomePage")),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
