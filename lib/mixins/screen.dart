import 'package:flutter/services.dart';

mixin Screen {
  /// 强制横屏
  Future<void> landspace() {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  /// 强制竖屏
  Future<void> portrait() {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  /// 横竖屏跟随系统
  Future<void> system() {
    return SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  /// 沉浸式状态栏
  Future<void> immersive([bool sticky = true]) {
    return SystemChrome.setEnabledSystemUIMode(
      sticky ? SystemUiMode.immersiveSticky : SystemUiMode.immersive,
    );
  }
}
