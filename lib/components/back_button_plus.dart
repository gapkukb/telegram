import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nil/nil.dart';

class BackButtonPlus extends StatelessWidget {
  final Color color;
  final double size;
  const BackButtonPlus({
    super.key,
    this.color = Colors.transparent,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {
        Get.back();
      },
      icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white, size: size),
      label: nil,
      style: FilledButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: color,
      ),
    );
  }
}
