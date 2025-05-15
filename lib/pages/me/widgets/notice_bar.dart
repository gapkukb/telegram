import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:marquee/marquee.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/pages/me/index.dart';

class MeNoticeBar extends GetView<MeController> {
  const MeNoticeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: Gutter.horizontal.xs,
      margin: Gutter.horizontal.xs,
      decoration: BoxDecoration(
        color: Color(0xffff5800).withAlpha(220),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: Color(0xffff5800)),
      ),
      child: Row(
        children: [
          Iconify(Ri.volume_up_line, color: Colors.white, size: 16),
          SizedBox(width: 8),
          Expanded(
            child: Marquee(
              text: controller.marqueeText.value,
              numberOfRounds: 100,
              pauseAfterRound: Duration(seconds: 1),
              startPadding: 100,
              style: TextStyle(fontSize: 12, color: Colors.white, height: 1),
            ),
          ),
        ],
      ),
    );
  }
}
