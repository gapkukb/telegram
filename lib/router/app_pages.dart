import 'package:get/get.dart';
import 'package:super_plus/pages/dashboard/index.dart';
import 'package:super_plus/pages/demo/index.dart';
import 'package:super_plus/pages/favorites/index.dart';
import 'package:super_plus/pages/games/index.dart';
import 'package:super_plus/pages/guide/guide.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/pages/me/index.dart';
import 'package:super_plus/pages/playing/index.dart';
import 'package:super_plus/pages/promos/index.dart';
import 'package:super_plus/pages/root/index.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/pages/settings/index.dart';
import 'package:super_plus/pages/sports/index.dart';
import 'package:super_plus/pages/terms/terms.dart';
import 'package:super_plus/pages/verification_code/verification_code.dart';
import 'package:super_plus/pages/webview/index.dart';
import 'package:super_plus/pages/share/index.dart';
import 'package:super_plus/pages/search/index.dart';
import 'package:super_plus/router/middleware/auth_middleware.dart';

part 'app_routes.dart';
// part '_dashboard.dart';

abstract class AppPages {
  AppPages._();

  // static const initial = Routes.dashboard;
<<<<<<< HEAD
  static const initial = Routes.search;
=======
  static const initial = Routes.sports;
>>>>>>> 59905a8 (update)

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: _Paths.login,
          page: () => const LoginView(),
          binding: LoginBinding(),
          fullscreenDialog: true,
          arguments: {"header": false},
          middlewares: [EnsureNotAuthedMiddleware()],
        ),
        GetPage(
          name: _Paths.dashboard,
          page: () => const DashboardView(),
          binding: DashboardBinding(),
          preventDuplicates: true,
          children: [
            GetPage(
              name: _Paths.home,
              page: () => const HomeView(),
              binding: HomeBinding(),
            ),

            GetPage(
              name: _Paths.promos,
              page: () => const PromosView(),
              binding: PromosBinding(),
            ),

            GetPage(
              name: _Paths.games,
              page: () => const GamesView(),
              binding: GamesBinding(),
            ),

            GetPage(
              name: _Paths.favorites,
              page: () => const FavoritesView(),
              binding: FavoritesBinding(),
            ),

            GetPage(
              name: _Paths.me,
              page: () => const MeView(),
              binding: MeBinding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.webview,
          page: () => const WebviewView(),
          binding: WebviewBinding(),
        ),

        GetPage(
          name: _Paths.settings,
          page: () => const SettingsView(),
          binding: SettingsBinding(),
          title: 'Settings',
        ),

        GetPage(
          name: _Paths.share,
          page: () => const ShareView(),
          binding: ShareBinding(),
          title: 'share',
        ),

        GetPage(
          name: _Paths.terms,
          page: () => const TermsView(),
          title: 'share',
        ),

        GetPage(
          name: _Paths.code,
          page: () => const VerificationCodeView(),
          fullscreenDialog: true,
        ),

        GetPage(name: _Paths.demo, page: () => const DemoPage()),
        GetPage(name: _Paths.guide, page: () => const GuideView()),
        GetPage(
          name: _Paths.playing,
          page: () => const PlayingView(),
          binding: PlayingBinding(),
        ),
        GetPage(
<<<<<<< HEAD
          name: _Paths.search,
          page: () => const SearchView(),
          binding: SearchBinding(),
=======
          name: _Paths.sports,
          page: () => const SportsView(),
          binding: SportsBinding(),
>>>>>>> 59905a8 (update)
        ),
      ],
    ),
  ];

  // static final routes = [_root];
}
