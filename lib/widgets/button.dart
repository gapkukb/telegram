
import 'package:flutter/material.dart';
import 'package:super_plus/widgets/icon_plus.dart';

enum ButtonType { FILLED, OUTLINE, NONE }

enum ButtonShape { CIRLE, ROUNDED, SQUARE, OUTLINE, NONE }

enum ButtonSize { MINI, SMALL, NORMAL, MEDIUM, LARGE }

enum ButtonIconPosition { LEFT, RIGHT, TOP, BOTTOM }

final sizes = {
  ButtonSize.MINI: 24.0,
  ButtonSize.SMALL: 32.0,
  ButtonSize.NORMAL: 40.0,
  ButtonSize.MEDIUM: 48.0,
  ButtonSize.LARGE: 56.0,
};

class Button extends StatelessWidget {
  final String? label;
  final double? labelSize;
  final Color? labelColor;
  final Widget? labelWidget;
  final TextStyle? labelStyle;
  final dynamic icon;
  final double? iconSize;
  final Color? iconColor;
  final ButtonType? type;
  final Widget? iconWidget;
  final ButtonIconPosition iconPosition;
  final ImageProvider? image;
  final BorderSide? border;
  final double? radius;
  final Gradient? gradient;
  final ButtonShape? shape;
  final ButtonSize? size;
  final Color? color;
  final bool fullWidth;
  final double? height;
  final double width;
  final Function? onPressed;

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
    this.shape = ButtonShape.NONE,
    this.size = ButtonSize.NORMAL,
    this.color,
    this.fullWidth = false,
    this.height,
    this.width = double.infinity,
    this.onPressed,
    this.type,
  });

  const Button.filled({
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
    this.shape = ButtonShape.NONE,
    this.size = ButtonSize.NORMAL,
    required this.color,
    this.fullWidth = false,
    this.height,
    this.width = double.infinity,
    this.onPressed,
    this.type = ButtonType.FILLED,
  });

  const Button.outlined({
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
    this.shape = ButtonShape.NONE,
    this.size = ButtonSize.NORMAL,
    this.color,
    this.fullWidth = false,
    this.height,
    this.width = double.infinity,
    this.onPressed,
    this.type = ButtonType.OUTLINE,
  });

  @override
  Widget build(BuildContext context) {
    final h = height ?? sizes[size]!;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: constraints,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: gradient,
            color: color,
            borderRadius: BorderRadius.circular(radius ?? 0),
          ),
          width: width,
          height: h,
          child: _buildChild(context, h),
        );
      },
    );
  }

  Widget? _buildChild(BuildContext context, double height) {
    final label = _buildLabel(height);
    if (icon == null) return label;
    final iconWidget = IconPlus(
      icon,
      size: iconSize,
      color: iconColor ?? labelColor ?? color,
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

  Widget? _buildLabel(double height) {
    if (labelWidget != null) return labelWidget;
    if (label == null) return null;
    return Text(
      label!,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: labelSize ?? height / 2.5,
        color: labelColor ?? foreColor,
      ).merge(labelStyle),
    );
  }

  Color? get foreColor {
    if (type == ButtonType.FILLED) return Colors.white;
    if (type == ButtonType.FILLED) return color;
    return null;
  }

  Color? get backColor {
    if (type == ButtonType.FILLED) return color;
    if (type == ButtonType.FILLED) return null;
    return null;
  }
}
