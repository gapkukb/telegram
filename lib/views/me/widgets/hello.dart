import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram/router/router.dart';

import '../index.dart';

/// hello
class HelloWidget extends GetView<MeController> {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.settings.name);
        },
        child: Text("controller.state.title"),
      ),
    );
  }
}
