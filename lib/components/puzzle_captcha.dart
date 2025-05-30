import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_captcha/slider_captcha.dart';
import 'package:super_plus/gen/assets.gen.dart';
import 'package:super_plus/helpers/dialog.dart';

Future<T?> dialogPuzzleCaptcha<T>() {
  final SliderController controller = SliderController();
  const id = "dialogPuzzleCaptcha";

  return dialog(
    id: id,
    name: id,
    SliderCaptcha(
      controller: controller,
      image: Container(
        color: Colors.grey,
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Assets.images.pagcor.image(
          fit: BoxFit.fitWidth,
          width: double.infinity,
          height: 200,
        ),
      ),
      colorBar: Colors.blue,
      colorCaptChar: Colors.blue,
      onConfirm: (scucessful) async {
        if (scucessful) {
          Get.closeDialog(result: true);
        } else {
          controller.create.call();
        }
      },
    ),
  );
}
