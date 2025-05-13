import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class KycPage extends GetView<KycController> {
  const KycPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("KycPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KycController>(
      init: KycController(),
      id: "kyc",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("kyc")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
