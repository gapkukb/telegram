import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:super_plus/api/user_api.dart';
import 'package:super_plus/helpers/dialog.dart';

part 'puzzle_captcha.dart';
part 'puzzle_captcha_image.dart';
part 'puzzle_captcha_thumb.dart';
part 'puzzle_captcha_track.dart';
part 'puzzle_captcha_slider.dart';

Future<T?> dialogPuzzleCaptcha<T>() {
  return dialog(
    id: PuzzleCaptcha.id,
    name: PuzzleCaptcha.id,
    Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: PuzzleCaptcha(onSuccess: (token) async {}),
    ),
  );
}
