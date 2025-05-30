import 'package:flutter/material.dart';

class DividerPlus extends StatelessWidget {
  final Color? color;
  final Color? lineColor;
  final String text;
  final Widget? child;
  final double? gutter;
  final double? height;

  const DividerPlus({
    super.key,
    this.color,
    this.lineColor,
    this.child,
    this.gutter,
    this.height,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final color =
        Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white38
            : Colors.black38;

    final line = Expanded(
      child: Divider(
        color: lineColor ?? color ?? color,
        height: height,
        thickness: 0,
      ),
    );

    return Row(
      children: [
        line,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: gutter ?? 32),
          child:
              child ??
              Text(text, style: TextStyle(color: color ?? color, fontSize: 12)),
        ),
        line,
      ],
    );
  }
}
