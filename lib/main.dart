import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegram/services/app_service.dart';
import 'application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AppService>(AppService(), permanent: true);
  runApp(const Application());
}
