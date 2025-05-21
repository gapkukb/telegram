import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/pages/login/widgets/login_agreement.dart';
import 'package:super_plus/widgets/icon_plus.dart';
import 'package:iconify_flutter/icons/eos_icons.dart';

class LoginAgreementConfirmation extends LoginAgreement {
  const LoginAgreementConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const IconPlus(
          EosIcons.network_policy_outlined,
          size: 100,
          color: Colors.amber,
        ),
        const SizedBox(height: 32),
        content,
        const SizedBox(height: 16),
        GFButton(
          onPressed: () {
            Get.closeDialog(result: true);
          },
          fullWidthButton: true,
          text: "AGREE",
          color: const Color(0xffff5800),
        ),
        const SizedBox(height: 0),
        GFButton(
          onPressed: Get.closeDialog,
          fullWidthButton: true,
          text: "CANCEL",
          color: const Color(0xffff5800),
          type: GFButtonType.outline,
        ),
        // SizedBox(height: 1000),
      ],
    );
  }
}
