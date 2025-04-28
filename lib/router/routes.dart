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
  static final games = GetPage(
    popGesture: true,
    name: "/games",
    page: () => const GamesPage(),
    binding: GamesBinding(),
  );
  static final login = GetPage(
    popGesture: true,
    name: "/login",
    page: () => const LoginPage(),
    binding: LoginBinding(),
  );

  static List<GetPage> get pages {
    return [dashboard, games, login];
  }
}
