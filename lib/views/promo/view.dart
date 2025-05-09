import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class PromoPage extends GetView<PromoController> {
  const PromoPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromoController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("promo")),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
