part of './router.dart';

class Routes {
  Routes._();
  static final settings = GetPage(
    popGesture: true,
    name: "/settings",
    page: () => const SettingsPage(),
    binding: SettingsBinding(),
  );
  static final home = GetPage(
    popGesture: true,
    name: "/home",
    page: () => const HomePage(),
    binding: HomeBinding(),
    children: [settings],
  );
  static final dashboard = GetPage(
    popGesture: true,
    name: "/",
    page: () => const DashboardPage(),
    binding: DashboardBinding(),
    // children: [home, settings, games],
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
  static final forgot = GetPage(
    popGesture: true,
    name: "/forgot",
    page: () => const ForgotPasswordPage(),
  );
  static final otp = GetPage(
    popGesture: true,
    name: "/otp",
    page: () => const OTPPage(),
  );
  static final webview = GetPage(
    popGesture: true,
    name: "/webview",
    page: () => const Webview(),
  );
  static final demo = GetPage(
    popGesture: true,
    name: "/demo",
    page: () => const Demo(),
  );

  static List<GetPage> get pages {
    return [dashboard, home, games, login, forgot, otp, webview, demo];
  }

  static String get initialRoute => dashboard.name;
}
