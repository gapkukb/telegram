import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/button.dart';

import '../index.dart';

/// hello
class MeBalance extends GetView<MeController> {
  const MeBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(50),
        borderRadius: BorderRadius.circular(Gutter.xxs),
      ),

      child: Padding(
        padding: Gutter.horizontal.xs,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    // height: 36,
                    child: TextButton.icon(
                      onPressed: () {},
                      iconAlignment: IconAlignment.end,
                      label: Text(
                        "Balance (PHP)",
                        style: TextStyle(
                          color: Colors.white.withAlpha(200),
                          fontSize: 12,
                        ),
                      ),
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                  Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(canvasColor: Colors.transparent),
                    child: Chip(
                      padding: Gutter.zero,
                      backgroundColor: Colors.transparent,
                      shape: StadiumBorder(
                        side: BorderSide(width: 0, color: Colors.transparent),
                      ),
                      color: WidgetStatePropertyAll(Colors.transparent),
                      onDeleted: () {},
                      deleteIcon: Icon(Icons.refresh),
                      deleteIconColor: Colors.white,
                      label: Text(
                        "100,221.01",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              // spacing: 8,
              children: [
                GFButton(
                  onPressed: () {},
                  size: 32,
                  text: "充值",
                  color: Colors.green,
                ),
                GFButton(
                  onPressed: () {},
                  size: 32,
                  text: "提现",
                  color: Color(0xffff5800),
                  type: GFButtonType.outline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
