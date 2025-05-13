import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:nil/nil.dart';

enum CellArrow { RIGHT, DOWN, UP, LEFT }

class Cell extends StatelessWidget {
  final double? height;
  final String? title;
  final TextStyle? titleStyle;
  final Widget? titleWidget;
  final String? value;
  final TextStyle? valueStyle;
  final Widget? valueWidget;
  final String? label;
  final TextStyle? labelStyle;
  final Widget? labelWidget;
  final dynamic icon;
  final Widget? iconWidget;
  final Widget? extra;
  final Color? color;
  final bool? dense;
  final bool? center;
  final bool? clickable;
  final bool isLink;
  final CellArrow arrow;
  final void Function()? onTap;

  const Cell({
    super.key,
    this.title,
    this.titleStyle,
    this.titleWidget,
    this.value,
    this.valueStyle,
    this.valueWidget,
    this.label,
    this.labelStyle,
    this.labelWidget,
    this.icon,
    this.iconWidget,
    this.color,
    this.dense,
    this.center,
    this.clickable,
    this.isLink = false,
    this.arrow = CellArrow.RIGHT,
    this.height,
    this.extra,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final icon = _buildIcon();
    final left = _buildLeft();
    final value = _buildValue();
    final extra = _buildExtra();
    final defaultHeight = label == null && labelWidget == null ? 44.0 : 66.0;

    return SizedBox(
      height: height ?? defaultHeight,
      child: InkWell(
        onTap: onTap,
        enableFeedback: clickable ?? onTap == null ? false : true,
        child: Flex(
          spacing: 8,
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) icon,
            left,
            Expanded(
              child: Align(alignment: Alignment.centerRight, child: value),
            ),
            if (extra != null) extra,
          ],
        ),
      ),
    );
  }

  Widget? _buildIcon() {
    if (iconWidget == null && icon == null) return null;
    if (iconWidget != null) return iconWidget;
    final size = 14.0;
    const color = Color(0xff111111);

    if (icon is IconData) return Icon(icon!, size: size, color: color);
    if (icon is String) return Iconify(icon, size: size, color: color);
    throw Exception("icon must be IconData or String");
  }

  Widget _buildLeft() {
    final title = _buildTitle();
    final label = _buildLabel();

    if (label == null && title == null) return SizedBox.shrink();
    if (label == null) return title!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title!, label],
    );
  }

  Widget? _buildTitle() {
    if (titleWidget == null && title == null) return null;

    final style = TextStyle(
      fontSize: 14,
      color: const Color(0xff111111),
    ).merge(titleStyle);

    return titleWidget ?? Text(title!, style: style);
  }

  Widget _buildValue() {
    if (valueWidget == null && value == null) return SizedBox.shrink();

    return valueWidget ??
        Text(
          value!,
          style: TextStyle(
            fontSize: 14,
            color: const Color(0xff999999),
          ).merge(valueStyle),
        );
  }

  Widget? _buildLabel() {
    if (labelWidget == null && label == null) return null;
    final style = TextStyle(
      fontSize: 12,
      color: const Color(0xff999999),
    ).merge(valueStyle);

    return labelWidget ?? Text(label!, style: style);
  }

  Widget? _buildExtra() {
    if (extra != null) return extra;
    if (!isLink) return null;

    final Map<CellArrow, int> angles = {
      CellArrow.UP: 1,
      CellArrow.RIGHT: 2,
      CellArrow.DOWN: 3,
      CellArrow.LEFT: 4,
    };

    return RotatedBox(
      quarterTurns: angles[arrow]!,
      child: const Icon(Icons.chevron_left, size: 18, color: Color(0xff999999)),
    );
  }
}
