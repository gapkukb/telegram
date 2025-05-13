import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class WithdrawPage extends GetView<WithdrawController> {
  const WithdrawPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("WithdrawPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WithdrawController>(
      init: WithdrawController(),
      id: "withdraw",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("withdraw")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
