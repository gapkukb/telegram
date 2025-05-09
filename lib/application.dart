import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:super_plus/router/router.dart';
import 'package:super_plus/locales/locales.dart';

class Application extends StatelessWidget {
  const Application() : super(key: const Key('Application'));

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(750, 1336), minTextAdapt: true, splitScreenMode: true, child: GetMaterialApp(title: 'Flutter Demo', popGesture: true, theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true), translations: LocaleTranslations(), locale: Get.deviceLocale, fallbackLocale: LocaleTranslations.zh, initialRoute: Routes.initialRoute, getPages: Routes.pages));
  }
}
