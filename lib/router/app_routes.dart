// ignore_for_file: non_constant_identifier_names

part of 'app_pages.dart';

// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const dashboard = _Paths.dashboard;
  static const home = _Paths.dashboard + _Paths.home;
  static const promos = _Paths.dashboard + _Paths.promos;
  static const games = _Paths.dashboard + _Paths.games;
  static const favorites = _Paths.dashboard + _Paths.favorites;
  static const me = _Paths.dashboard + _Paths.me;
  static const settings = _Paths.settings;
  static const login = _Paths.login;
  static const webview = _Paths.webview;
  static const share = _Paths.share;
  static const terms = _Paths.terms;
  static const code = _Paths.code;
  static const recover = _Paths.recover;
  static const privatePolicy = _Paths.privatePolicy;
  static const demo = _Paths.demo;
  static const guide = _Paths.guide;
  static const playing = _Paths.playing;
<<<<<<< HEAD
  static const search = _Paths.search;
=======
  static const sports = _Paths.sports;
>>>>>>> 59905a8 (update)

  static String LOGIN_THEN(String afterSuccessfulLogin) {
    return '$login?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  }

  static String PRODUCT_DETAILS(String productId) {
    return '$me/$productId';
  }
}

abstract class _Paths {
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const promos = '/promos';
  static const games = '/games';
  static const favorites = '/favorites';
  static const me = '/me';
  static const login = '/login';
  static const settings = '/settings';
  static const webview = '/webview';
  static const share = '/share';
  static const terms = '/terms';
  static const code = '/code';
  static const recover = '/recover';
  static const privatePolicy = '/private_policy';
  static const demo = '/demo';
  static const guide = '/guide';
  static const playing = '/playing';
<<<<<<< HEAD
  static const search = '/search';
=======
  static const sports = '/sports';
>>>>>>> 59905a8 (update)
}
