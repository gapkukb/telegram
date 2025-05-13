import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/router/router.dart';

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
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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

                  TextButton.icon(
                    onPressed: null,
                    iconAlignment: IconAlignment.end,
                    label: Text(
                      "100,221.01",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: GestureDetector(
                      onTap: () {
                        print("object");
                      },
                      child: Icon(Icons.refresh, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                GFButton(
                  onPressed: () {},
                  shape: GFButtonShape.square,
                  size: GFSize.SMALL,
                  color: Colors.green,
                  child: Text("充值"),
                ),
                GFButton(
                  onPressed: () {},
                  shape: GFButtonShape.standard,
                  size: GFSize.SMALL,
                  color: Color(0xffff5800),
                  child: Text("提现"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
