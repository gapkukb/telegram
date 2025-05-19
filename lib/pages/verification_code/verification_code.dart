import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pinput/pinput.dart';
import 'package:super_plus/components/back_button_plus.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/icon_plus.dart';

final style = const TextStyle(color: Colors.white, fontSize: 14);

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(8),
  ),
);

class VerificationCodeView extends StatefulWidget {
  const VerificationCodeView({super.key});

  @override
  State<VerificationCodeView> createState() => _VerificationCodeViewState();
}

class _VerificationCodeViewState extends State<VerificationCodeView> {
  final phone = Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5762e5),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButtonPlus(),
      ),
      body: DefaultTextStyle(
        style: style,
        child: ListView(
          padding: Gutter.all.sm,
          children: [
            SizedBox(height: 64),
            Row(
              children: [
                IconPlus(Icons.done, color: Colors.white),
                Text(" CONFIRMATION"),
              ],
            ),
            SizedBox(height: 24),
            Row(
              spacing: Gutter.lg,
              children: [
                const IconPlus(
                  Icons.vibration_outlined,
                  color: Colors.white54,
                  size: 48,
                ),
                Expanded(
                  child: Text.rich(
                    style: style.copyWith(
                      color: Colors.white54,
                      height: 1.5,
                      letterSpacing: 1.2,
                      fontSize: 14,
                    ),
                    TextSpan(
                      text: "Please type the verification code set to ",
                      children: [
                        TextSpan(
                          text: phone,
                          style: style.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                if (value != '666666') return 'Pin is incorrect';
                print("value:$value");
                Get.back(result: value);
                return null;
              },
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: GFButton(
                onPressed: () {},
                type: GFButtonType.transparent,
                text: "RESEND CODE",
                textStyle: style.copyWith(letterSpacing: 1.5, fontSize: 12),
              ),
            ),
            SizedBox(height: 8),
            GFButton(
              onPressed: () {},
              text: "NEXT",
              size: GFSize.LARGE,
              color: Colors.red,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Opacity(
        opacity: 0.5,
        child: GFButton(
          onPressed: () {},
          type: GFButtonType.transparent,
          text: "Didn't receive code?",
          textStyle: style,
        ),
      ),
    );
  }
}
