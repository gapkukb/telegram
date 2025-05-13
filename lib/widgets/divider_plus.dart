import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerPlus extends StatelessWidget {
  final Color color;
  final Color lineColor;
  final String text;
  final Widget? child;
  final double? gutter;

  const DividerPlus({
    super.key,
    this.color = Colors.black,
    this.lineColor = Colors.black,
    this.child,
    this.gutter,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final Line = Expanded(child: Divider(color: lineColor));

    return Row(
      children: [
        Line,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: gutter ?? 32),
          child: child ?? Text(text, style: TextStyle(color: color)),
        ),
        Line,
      ],
    );
  }
}
