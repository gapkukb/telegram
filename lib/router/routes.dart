part of './router.dart';

class Routes {
  Routes._();
  static final home = GetPage(name: "/", page: () => const HomePage());
  static final games = GetPage(name: "/games", page: () => const GamesPage());

  static List<GetPage> get pages {
    return [home, games];
  }
}
