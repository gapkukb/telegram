import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:telegram/router/router.dart';
import 'package:telegram/views/home/index.dart';

class Application extends StatelessWidget {
  const Application() : super(key: const Key('Application'));

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.games.name,
      getPages: Routes.pages,
    );
  }
}
