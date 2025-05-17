import 'package:flutter/material.dart';

class TextPlus extends Text {
  final double? fontSize;
  final Color? color;
  final bool bold;

  const TextPlus(
    super.data, {
    super.key,
    super.maxLines,
    super.locale,
    super.selectionColor,
    super.semanticsLabel,
    super.softWrap,
    super.strutStyle,
    super.style,
    super.textAlign,
    super.textDirection,
    super.textHeightBehavior,
    super.textScaleFactor,
    super.textScaler,
    super.textWidthBasis,
    this.fontSize,
    this.color,
    this.bold = false,
  });

  const TextPlus.bold(
    super.data, {
    super.key,
    super.maxLines,
    super.locale,
    super.selectionColor,
    super.semanticsLabel,
    super.softWrap,
    super.strutStyle,
    super.style,
    super.textAlign,
    super.textDirection,
    super.textHeightBehavior,
    super.textScaleFactor,
    super.textScaler,
    super.textWidthBasis,
    this.fontSize,
    this.color,
  }) : bold = true;

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      maxLines: maxLines,
      locale: locale,
      key: key,
      selectionColor: selectionColor,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: bold ? FontWeight.bold : null,
      ).merge(style),
      textAlign: textAlign,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textScaler: textScaler,
      textWidthBasis: textWidthBasis,
    );
  }
}
