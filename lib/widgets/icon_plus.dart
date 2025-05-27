import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class IconPlus extends StatelessWidget {
  final dynamic icon;
  final double? size;
  final Color? color;

  const IconPlus(this.icon, {super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    if (icon is ImageProvider) {
      return Image(image: icon, width: size, height: size, fit: BoxFit.contain);
    }
    if (icon is String) return Iconify(icon, size: size, color: color);
    if (icon is IconData) return Icon(icon, size: size, color: color);
    if (icon is Widget) return icon;
    throw "Paramter \"icon\" must kinds of string,iconData,Widget";
  }
}
