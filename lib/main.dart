import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_plus/helpers/prfs.dart';
import 'application.dart';
import 'package:scaled_app/scaled_app.dart';

void main() async {
  final widgetsBinding = ScaledWidgetsFlutterBinding.ensureInitialized(
    scaleFactor: (deviceSize) {
      const double designWidth = 375.0;
      return deviceSize.width / designWidth;
    },
  );
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await ls.initlize();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // FlutterNativeSplash.remove();
  runApp(const Application());
}
