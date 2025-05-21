import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_captcha/slider_captcha.dart';
import 'package:super_plus/api/user_api.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/helpers/dialog.dart';
import 'package:super_plus/models/user.dart';
import 'package:super_plus/widgets/card_plus.dart';

part 'puzzle_captcha_widget.dart';

Future<T?> dialogPuzzleCaptcha<T>() {
  return dialog(
    id: _PuzzleCaptchaWidget.id,
    name: _PuzzleCaptchaWidget.id,
    const _PuzzleCaptchaWidget(),
  );
}
