import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

class Menu {
  final String title;
  final String? icon;
  final Widget? leading;
  final String? trailing;
  final String? route;
  final VoidCallback? onTap;

  Menu({required this.title, this.leading, this.route, this.onTap, this.trailing, this.icon});
}

class AsideController extends GetxController {
  AsideController();
  final menus = [
    [Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {})],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Page Picks", icon: IconParkSolid.page_template, route: "/item1", onTap: () {}),
      Menu(title: "Media", icon: SimpleIcons.mediamarkt, route: "/item1", onTap: () {}),
      Menu(title: "Contact", icon: IconParkSolid.abnormal, route: "/item1", onTap: () {}),
    ],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Media", icon: SimpleIcons.mediamarkt, route: "/item1", onTap: () {}),
      Menu(title: "Contact", icon: IconParkSolid.abnormal, route: "/item1", onTap: () {}),
    ],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Page Picks", icon: IconParkSolid.page_template, route: "/item1", onTap: () {}),
    ],
    [Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {})],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Page Picks", icon: IconParkSolid.page_template, route: "/item1", onTap: () {}),
      Menu(title: "Media", icon: SimpleIcons.mediamarkt, route: "/item1", onTap: () {}),
      Menu(title: "Contact", icon: IconParkSolid.abnormal, route: "/item1", onTap: () {}),
    ],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Media", icon: SimpleIcons.mediamarkt, route: "/item1", onTap: () {}),
      Menu(title: "Contact", icon: IconParkSolid.abnormal, route: "/item1", onTap: () {}),
    ],
    [
      Menu(title: "Homepage", icon: Mdi.home, route: "/item1", onTap: () {}),
      Menu(title: "Components", icon: Uiw.component, route: "/item1", onTap: () {}),
      Menu(title: "Page Picks", icon: IconParkSolid.page_template, route: "/item1", onTap: () {}),
    ],
  ];

  _initData() {
    update(["aside"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
