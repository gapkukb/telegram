import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/widgets/icon_plus.dart';
import 'package:iconify_flutter/icons/ion.dart';

class DialogPageBackButton extends StatelessWidget {
  final double dx;
  final double dy;
  final Color backgroundColor;
  final Color color;
  final dynamic icon;
  const DialogPageBackButton({
    super.key,
    this.dx = 0,
    this.dy = 0,
    this.icon = Ion.ios_close_outline,
    this.backgroundColor = Colors.transparent,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: FloatingActionButton.small(
        backgroundColor: backgroundColor,
        elevation: 0,
        heroTag: null,
        onPressed: () {
          Get.back(result: false);
        },
        shape: const CircleBorder(),
        child: IconPlus(icon, color: color),
      ),
    );
  }
}
