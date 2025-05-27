import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:scaled_app/scaled_app.dart';
import 'package:super_plus/locales/locales.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/services/auth_service.dart';

class Application extends StatelessWidget {
  const Application() : super(key: const Key('Application'));

  @override
  Widget build(BuildContext context) {
    final queryClient = QueryClient();
    return MediaQuery(
      data: MediaQuery.of(context).scale(),
      child: QueryClientProvider(
        queryClient: queryClient,
        child: GetMaterialApp(
          binds: [Bind.put(AuthService())],
          // showPerformanceOverlay: true,
          // debugShowCheckedModeBanner: true会导致windows安卓子系统初始化黑屏,
          // debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          title: 'Super Plus',
          popGesture: true,
          theme: ThemeData(
            fontFamily: 'Boxed',
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          translations: LocaleTranslations(),
          locale: Get.deviceLocale,
          fallbackLocale: LocaleTranslations.zh,
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
        ),
      ),
    );
  }
}
