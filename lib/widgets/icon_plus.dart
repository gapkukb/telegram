import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class IconPlus extends StatelessWidget {
  final dynamic icon;
  final double? size;
  final Color? color;
  const IconPlus(this.icon, {super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    final s = Theme.of(context).textTheme.bodyMedium?.fontSize;
    if (icon is String) return Iconify(icon, size: size ?? s, color: color);
    if (icon is IconData) return Icon(icon, size: size ?? s, color: color);
    return SizedBox.shrink();
  }
}
