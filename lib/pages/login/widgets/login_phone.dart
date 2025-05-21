import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/api/user_api.dart';
import 'package:super_plus/mixins/validator.dart';
import 'package:super_plus/pages/login/index.dart';
import 'package:super_plus/router/app_pages.dart';
import 'package:super_plus/widgets/text_form_field_plus.dart';

class LoginPhone extends GetView<LoginController> with Validators {
  LoginPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormFieldPlus(
          autofocus: true,
          placeholder: "09XXXXXXXXX",
          textInputAction: TextInputAction.next,
          icon: Icons.account_box_outlined,
          onSaved: (value) => controller.payload.account = value,
          validator: validators.phone,
        ),

        const SizedBox(height: 8),

        GFButton(
          onPressed: () async {
            final ok = await controller.prevalidate();
            if (!ok) return;
            final phone = controller.payload.account;
            final code = await Get.toNamed(Routes.code, arguments: phone);
            final user = await login(data: {"phone": phone, "code": code});
          },
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.solid,
          color: Colors.red,
          text: "NEXT",
        ),
        const SizedBox(height: 8),
        GFButton(
          onPressed: controller.toggleMode,
          fullWidthButton: true,
          size: 48,
          type: GFButtonType.outline,
          color: Colors.red,
          text: "USE PASSWORD",
        ),
      ],
    );
  }
}
