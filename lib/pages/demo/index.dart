import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/components/puzzle_captcha/index.dart';
import 'dart:math' as math;
import 'package:marqueer/marqueer.dart';
import 'package:get/get.dart';
import 'package:super_plus/widgets/divider_plus.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid.builder(
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              print("object");
              return Container(color: Colors.amber);
            },
          ),
          const SliverToBoxAdapter(
            child: DividerPlus(height: 36, text: "我是有底线的"),
          ),
        ],
      ),
    );
  }
}
