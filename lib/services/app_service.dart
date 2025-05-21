import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppService extends GetxService {
  final themeMode = ThemeMode.system.obs;
  final locale = const Locale("zh", "CN").obs;
  final dashboradKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    dashboradKey.currentState!.openDrawer();
  }

  void closeDrawer() {
    dashboradKey.currentState!.closeDrawer();
  }

  void changeThemeMode(ThemeMode mode) {
    themeMode.value = mode;
  }

  void changeLocale(Locale locale) {
    this.locale.value = locale;
  }
}
