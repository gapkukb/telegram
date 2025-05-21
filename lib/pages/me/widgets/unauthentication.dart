import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../index.dart';

/// hello
class Unauthentication extends GetView<MeController> {
  const Unauthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      // color: Colors.amber,
      child: Center(
        child: GFButton(
          color: const Color(0xffff5800),
          shape: GFButtonShape.pills,
          onPressed: () {},
          child: const Text("SIGN IN | SIGN UP"),
        ),
      ),
    );
  }
}
