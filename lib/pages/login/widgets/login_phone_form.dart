import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/components/puzzle_captcha/index.dart';
import 'package:super_plus/helpers/dialog.dart';
import 'package:super_plus/mixins/validator.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/pages/login/widgets/login_agreement_confirmation.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/widgets/icon_plus.dart';

class LoginPhoneForm extends GetView<LoginController> with Validators {
  LoginPhoneForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          validator: validators.phone,
          onSaved: (value) {
            controller.payload.account = value;
          },
          decoration: const InputDecoration(
            hintText: "09xx xxx xxxx",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: BorderSide(width: 0, color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              borderSide: BorderSide(width: 0.5, color: Colors.red),
            ),
            prefixIcon: IconPlus(Icons.account_box_outlined, color: Colors.red),
            suffixIcon: IconPlus(Icons.cancel_outlined, color: Colors.red),
          ),
        ),
        const SizedBox(height: 32),
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

            print("code$code");
          },
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.solid,
          color: Colors.red,
          text: "NEXT",
        ),
        const SizedBox(height: 8),
        GFButton(
          onPressed: controller.isVerifyMode.toggle,
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
