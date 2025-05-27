import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/widgets/text_plus.dart';

class GuideView extends StatefulWidget {
  const GuideView({super.key});

  @override
  State<GuideView> createState() => _GuideViewState();
}

class _GuideViewState extends State<GuideView> {
  final total = 3;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            itemCount: total,
            itemBuilder: (context, index) {
              return Container(
                color: Color(
                  (Random().nextDouble() * 0xFFFFFF).toInt(),
                ).withAlpha(128),
                child: Align(
                  alignment: const FractionalOffset(0.5, 0.9),
                  child:
                      index == 2
                          ? GFButton(
                            size: GFSize.SMALL,
                            onPressed: () {},
                            text: "Get Startted",
                            color: Colors.red,
                            // textColor: Colors.black,
                          )
                          : null,
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text("${index + 1}/$total"),
            ),
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: RawMaterialButton(
            onPressed: () {
              Get.offAllNamed(Routes.dashboard);
            },
            fillColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const TextPlus("SKIP", color: Colors.white),
          ),
        ),
      ],
    );
  }
}
