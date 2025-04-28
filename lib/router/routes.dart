part of './router.dart';

class Routes {
  Routes._();
  static final settings = GetPage(
    popGesture: true,
    name: "/settings",
    page: () => const SettingsPage(),
    binding: SettingsBinding(),
  );
  static final dashboard = GetPage(
    popGesture: true,
    name: "/",
    page: () => const DashboardPage(),
    binding: DashboardBinding(),
    children: [settings],
  );

  static List<GetPage> get pages {
    return [dashboard];
  }
}
