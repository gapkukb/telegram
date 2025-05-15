import 'package:get/get.dart';
import 'package:super_plus/pages/dashboard/index.dart';
import 'package:super_plus/pages/favorites/index.dart';
import 'package:super_plus/pages/games/index.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/pages/me/index.dart';
import 'package:super_plus/pages/promos/index.dart';
import 'package:super_plus/pages/root/index.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/pages/settings/index.dart';
import 'package:super_plus/pages/terms/terms.dart';
import 'package:super_plus/pages/webview/index.dart';
import 'package:super_plus/pages/share/index.dart';
import 'package:super_plus/router/middleware/auth_middleware.dart';

part 'app_routes.dart';
// part '_dashboard.dart';

abstract class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final _root = GetPage(
    name: '/',
    page: () => const RootView(),
    binding: RootBinding(),
    participatesInRootNavigator: true,
    preventDuplicates: true,
    children: [terms],
  );

  static final home = GetPage(
    name: _Paths.home,
    page: () => const HomeView(),
    binding: HomeBinding(),
  );

  static final promos = GetPage(
    name: _Paths.promos,
    page: () => const PromosView(),
    binding: PromosBinding(),
  );

  static final games = GetPage(
    name: _Paths.games,
    page: () => const GamesView(),
    binding: GamesBinding(),
  );

  static final favorites = GetPage(
    name: _Paths.favorites,
    page: () => const FavoritesView(),
    binding: FavoritesBinding(),
  );

  static final me = GetPage(
    name: _Paths.me,
    page: () => const MeView(),
    binding: MeBinding(),
  );

  static final _dashboard = GetPage(
    name: _Paths.dashboard,
    page: () => const DashboardView(),
    binding: DashboardBinding(),
    preventDuplicates: true,
    children: [home, promos, games, favorites, me],
  );

  static final login = GetPage(
    name: _Paths.login,
    page: () => const LoginView(),
    binding: LoginBinding(),
    fullscreenDialog: true,
    arguments: {"header": false},
    middlewares: [EnsureNotAuthedMiddleware()],
  );

  static final webview = GetPage(
    name: _Paths.webview,
    page: () => const WebviewView(),
    binding: WebviewBinding(),
  );

  static final setting = GetPage(
    name: _Paths.settings,
    page: () => const SettingsView(),
    binding: SettingsBinding(),
    title: 'Settings',
  );

  static final share = GetPage(
    name: _Paths.share,
    page: () => const ShareView(),
    binding: ShareBinding(),
    title: 'share',
  );

  static final terms = GetPage(
    name: _Paths.terms,
    page: () => const TermsView(),
    title: 'share',
  );

  static final routes = [_root, _dashboard, login, setting, webview, share];
}
