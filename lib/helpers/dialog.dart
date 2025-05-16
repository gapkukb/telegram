import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum DialogPostion { left, right, top, bottom }

Future<T?> dialog<T>(
  Widget child, {
  bool? barrierDismissible,
  DialogPostion position = DialogPostion.bottom,
  Color? barrierColor,
  Color? color,
  final double insetsPadding = 8.0,
  BorderRadiusGeometry? borderRadius,
  bool useSafeArea = true,
  GlobalKey<NavigatorState>? navigatorKey,
  Object? arguments,
  String? name,
  RouteSettings? routeSettings,
  String? id,
}) {
  final dir = position == DialogPostion.bottom ? 1 : -1;

  return Get.generalDialog<T>(
    barrierColor: barrierColor ?? Colors.black54,
    id: id,
    navigatorKey: navigatorKey,
    routeSettings:
        routeSettings ?? RouteSettings(arguments: arguments, name: name),
    barrierDismissible: true,
    barrierLabel: '',
    pageBuilder:
        (_, __, ___) => Material(
          color: color ?? Colors.white,
          clipBehavior: Clip.hardEdge,
          borderRadius:
              borderRadius ??
              const BorderRadius.vertical(top: Radius.circular(8)),
          child: Padding(padding: EdgeInsets.all(insetsPadding), child: child),
        ),
    transitionBuilder: (context, animation, _, widget) {
      return Align(
        alignment: Alignment(0, (4 - 3 * animation.value) * dir),
        child: Opacity(opacity: animation.value, child: widget),
      );
    },
  );
}
