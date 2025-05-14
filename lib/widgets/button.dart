import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:super_plus/widgets/icon_plus.dart';

enum ButtonType { CIRLE, ROUNDED, SQUARE, OUTLINE, NONE }

enum ButtonSize { MINI, SMALL, NORMAL, MEDIUM, LARGE }

enum ButtonIconPosition { LEFT, RIGHT, TOP, BOTTOM }

class Button extends StatelessWidget {
  final String? label;
  final double? labelSize;
  final Color? labelColor;
  final Widget? labelWidget;
  final TextStyle? labelStyle;
  final dynamic icon;
  final double? iconSize;
  final Color? iconColor;
  final Widget? iconWidget;
  final ButtonIconPosition iconPosition;
  final ImageProvider? image;
  final BorderSide? border;
  final double? radius;
  final Gradient? gradient;
  final ButtonType? type;
  final ButtonSize? size;
  final Color? color;
  final bool fullWidth;
  final double? height;
  final double width;

  const Button({
    super.key,
    this.label,
    this.labelSize,
    this.labelColor,
    this.labelWidget,
    this.labelStyle,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.iconWidget,
    this.iconPosition = ButtonIconPosition.LEFT,
    this.image,
    this.border,
    this.radius,
    this.gradient,
    this.type = ButtonType.NONE,
    this.size = ButtonSize.NORMAL,
    this.color,
    this.fullWidth = false,
    this.height,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        color: color,
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      width: width,
      height: height,
      child: _buildChild(),
    );
  }

  Widget? _buildChild() {
    final label = _buildLabel();
    if (icon == null) return label;
    final iconWidget = IconPlus(
      icon,
      size: iconSize,
      color: iconColor ?? color,
    );

    final vertical =
        iconPosition == ButtonIconPosition.TOP ||
        iconPosition == ButtonIconPosition.BOTTOM;

    final reverse =
        iconPosition == ButtonIconPosition.RIGHT ||
        iconPosition == ButtonIconPosition.BOTTOM;

    return Flex(
      mainAxisSize: MainAxisSize.min,
      direction: vertical ? Axis.vertical : Axis.horizontal,
      children: reverse ? [label!, iconWidget] : [iconWidget, label!],
    );
  }

  Widget? _buildLabel() {
    if (labelWidget != null) return labelWidget;
    if (label == null) return null;
    return Text(
      label!,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: iconSize,
        color: labelColor ?? color,
      ).merge(labelStyle),
    );
  }
}
