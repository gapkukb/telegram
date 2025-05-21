import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/router/app_pages.dart';

class TermsPrivate extends StatelessWidget {
  const TermsPrivate({super.key});

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
        child: CheckboxListTile(
          onChanged: (checked) {},
          value: true,
          controlAffinity: ListTileControlAffinity.leading,
          title: Title,
          contentPadding: Gutter.zero,
          dense: true,
        ),
      ),
    );
  }

  static get Title {
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
