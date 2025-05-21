import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/router/app_pages.dart';

class LoginAgreement extends GetView<LoginController> {
  const LoginAgreement({super.key});

  static TapGestureRecognizer createHandler(String path) {
    return TapGestureRecognizer()
      ..onTap = () {
        Get.toNamed(path);
      };
  }

  static const colorStyle = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTileTheme(
        horizontalTitleGap: 0,
        child: Obx(
          () => CheckboxListTile(
            onChanged: (checked) {
              controller.agreement.value = checked!;
            },
            value: controller.agreement.value,
            controlAffinity: ListTileControlAffinity.leading,
            title: content,
            contentPadding: Gutter.zero,
            dense: true,
          ),
        ),
      ),
    );
  }

  get content {
    return Text.rich(
      // textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 12, color: Colors.grey),
      TextSpan(
        text: "I agree to the ",
        children: [
          TextSpan(
            text: "Terms of use",
            recognizer: createHandler(Routes.terms),
            style: colorStyle,
          ),
          const TextSpan(text: " and "),
          TextSpan(
            text: "Privacy policy",
            recognizer: createHandler(Routes.privatePolicy),
            style: colorStyle,
          ),
        ],
      ),
    );
  }
}
