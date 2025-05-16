import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/widgets/icon_plus.dart';

class LoginPhoneForm extends GetView<LoginController> {
  const LoginPhoneForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoTextField(
          padding: Gutter.all.sm,
          clearButtonMode: OverlayVisibilityMode.editing,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          prefix: Padding(
            padding: Gutter.left.xs,
            child: const IconPlus(
              Icons.account_box_outlined,
              color: Colors.red,
            ),
          ),
          // prefixMode: OverlayVisibilityMode.always,
          placeholder: "Your Phone Number",
        ),
        SizedBox(height: 32),
        GFButton(
          onPressed: () {},
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.solid,
          color: Colors.red,
          text: "NEXT",
        ),
        SizedBox(height: 8),
        GFButton(
          onPressed: () {
            controller.isAccountMode.value = true;
          },
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.outline,
          color: Colors.red,
          text: "ACCOUNT",
        ),
      ],
    );
  }
}
