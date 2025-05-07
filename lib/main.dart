import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:super_plus/services/app_service.dart';
import 'application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AppService>(AppService(), permanent: true);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(const Application());
  });
}
