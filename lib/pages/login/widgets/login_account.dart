import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/components/puzzle_captcha/puzzle_captcha.dart';
import 'package:super_plus/helpers/dialog.dart';
import 'package:super_plus/mixins/validator.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/pages/login/widgets/login_agreement_confirmation.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/widgets/text_form_field_plus.dart';
import 'package:super_plus/widgets/text_plus.dart';

class LoginAccount extends GetView<LoginController> with Validators {
  LoginAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormFieldPlus(
          autofocus: true,
          placeholder: "PHONE/EMAIL/ACCOUNT",
          icon: Icons.account_box_outlined,
          onSaved: (value) => controller.payload.password = value,
          validator: validators.phone,
        ),

        const SizedBox(height: 16),

        TextFormFieldPlus(
          obscureText: true,
          maxLength: 16,
          placeholder: "PASSWORD",
          icon: Icons.security,
          textInputAction: TextInputAction.done,
          onSaved: (value) => controller.payload.account = value,
          validator: validators.phone,
        ),

        Align(
          alignment: Alignment.centerRight,
          child: GFButton(
            type: GFButtonType.transparent,
            size: 24,
            onPressed: () {
              Get.toNamed(Routes.recover);
            },

            child: const TextPlus(
              "Forgot Password?",
              fontSize: 12,
              color: Colors.blue,
            ),
          ),
        ),

        GFButton(
          onPressed: () async {
            final state = controller.formKey.currentState!;
            if (!state.validate()) return;
            state.save();
            if (!controller.agreement.value) {
              final agreement = await dialog<bool?>(
                const LoginAgreementConfirmation(),
              );
              controller.agreement.value = agreement ?? false;
            }

            if (!controller.agreement.value) return;

            final ok = await dialogPuzzleCaptcha<bool?>() ?? false;

            if (!ok) return;

            final code = await Get.toNamed(
              Routes.code,
              arguments: controller.payload.account,
            );
          },
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.solid,
          color: Colors.red,
          text: "SIGN IN",
        ),
        const SizedBox(height: 8),
        GFButton(
          onPressed: controller.toggleMode,
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.outline,
          color: Colors.red,
          text: "USE VERIFICATION CODE",
        ),
      ],
    );
  }
}
