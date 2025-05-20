import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/widgets/phone_text_field.dart';

class LoginAccountForm extends GetView<LoginController> {
  const LoginAccountForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          PhoneTextField(),
          SizedBox(height: 32),
          TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              style: ButtonStyle(visualDensity: VisualDensity(vertical: -4)),
              onPressed: () {},
              child: Text("Forgot Password?", style: TextStyle(fontSize: 12)),
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {},
              child: Text("SIGN IN | SIGN UP"),
            ),
          ),
          SizedBox(height: 8),
          GFButton(
            onPressed: controller.isVerifyMode.toggle,
            fullWidthButton: true,
            size: 48,
            type: GFButtonType.outline,
            color: Colors.red,
            text: "ACCOUNT",
          ),
        ],
      ),
    );
  }
}
