import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:super_plus/widgets/phone_text_field.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  // 主视图
  Widget _buildView() {
    return const OAuthWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          floatingActionButton: Transform.translate(
            offset: Offset(0, 20),
            child: FloatingActionButton.small(
              heroTag: null,
              onPressed: () {
                // Navigator.pop(context);
                Get.back(result: false, closeOverlays: true);
              },
              shape: const CircleBorder(),
              child: const Icon(Icons.close),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 350),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://pub.imgscache.com/compic/73a7a58a-f93d-4050-b419-ac2a61f9ec69.png",
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: SafeArea(
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(48)),
                  child: Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to BingoPlus",
                          style: TextStyle(
                            height: 1,
                            color: const Color(0xff111111),
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Lucky Spin: ₱1 for a chance to win the mystery prize and a 1,000,000 Ampao unlimited times. Enjoy lightning fast withdrawals! ",
                          style: TextStyle(
                            height: 1,
                            color: const Color(0xff999999),
                            fontSize: 26,
                          ),
                        ),

                        SizedBox(height: 64),
                        PhoneTextField(),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Password"),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: ButtonStyle(
                              visualDensity: VisualDensity(vertical: -4),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Forgot?",
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                        SizedBox(height: 64),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: () {},
                            child: Text("Login/Register"),
                          ),
                        ),
                        OAuthWidget(),
                        TermsWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
