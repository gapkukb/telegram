part of './router.dart';

class AppPages {
  AppPages._();
  static final dashboard = GetPage(
    name: "/dashboard",
    page: () => const DashboardPage(),
    binding: DashboardBinding(),
    // children: [home, promo, games, favorite, me],
  );

  static final settings = GetPage(
    name: "/settings",
    page: () => const SettingsPage(),
    binding: SettingsBinding(),
  );

  static final home = GetPage(
    name: "/home",
    page: () => const HomePage(),
    binding: HomeBinding(),
    children: [settings],
  );

  static final games = GetPage(
    name: "/games",
    page: () => const GamesPage(),
    binding: GamesBinding(),
  );

  static final login = GetPage(
    name: "/login",
    page: () => const LoginPage(),
    binding: LoginBinding(),
    fullscreenDialog: true,
    transition: Transition.rightToLeftWithFade,
  );

  static final forgot = GetPage(
    name: "/forgot",
    page: () => const ForgotPasswordPage(),
  );

  static final otp = GetPage(name: "/otp", page: () => const OTPPage());

  static final webview = GetPage(name: "/webview", page: () => const Webview());

  static final demo = GetPage(name: "/demo", page: () => const Demo());

  static final favorite = GetPage(
    name: "/favorite",
    page: () => const FavoritePage(),
    binding: FavoriteBinding(),
  );

  static final share = GetPage(name: "/share", page: () => const SharePage());

  static final me = GetPage(
    name: "/me",
    page: () => const MePage(),
    binding: MeBinding(),
    children: [share],
  );

  static final promo = GetPage(
    name: "/promo",
    page: () => const PromoPage(),
    binding: PromoBinding(),
  );

  static final kyc = GetPage(name: "/kyc", page: () => const KycPage());

  static final banks = GetPage(name: "/banks", page: () => const BanksPage());

  static List<GetPage> get pages {
    return [
      dashboard,
      home,
      games,
      login,
      forgot,
      otp,
      webview,
      demo,
      settings,
      share,
      // kyc,
      // banks,
    ];
  }

  static String get initial => dashboard.name;
}
