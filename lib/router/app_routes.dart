part of 'app_pages.dart';

abstract class Routes {
  static const home = _Paths.home;
  static const profile = _Paths.home + _Paths.profile;
  static const settings = _Paths.settings;
  static const games = _Paths.home + _Paths.games;
  static const promo = _Paths.home + _Paths.promo;
  static const favorites = _Paths.home + _Paths.favorites;
  static const login = _Paths.login;

  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$login?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  static String PRODUCT_DETAILS(String productId) => 'products/$productId';
}

abstract class _Paths {
  static const home = '/home';
  static const profile = '/profile';
  static const settings = '/settings';
  static const games = '/games';
  static const login = '/login';
  static const dashboard = '/dashboard';
  static const promo = '/promo';
  static const favorites = '/favorites';
}
