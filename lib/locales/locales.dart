import 'dart:ui';
import 'package:get/get.dart';

part 'translations/en.dart';
part 'translations/zh.dart';
part 'keys.dart';

class LocaleTranslations extends Translations {
  static const en = Locale('en');
  static const zh = Locale('zh');

  @override
  Map<String, Map<String, String>> get keys => {'en': _en, 'zh': _zh};
}
