import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:telegram/router/router.dart';

import 'index.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _ForgotPasswordViewGetX();
  }
}

class _ForgotPasswordViewGetX extends GetView<ForgotPasswordController> {
  const _ForgotPasswordViewGetX({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(child: Text("ForgotPasswordPage"));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      init: ForgotPasswordController(),
      id: "forgot_password",
      builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(32.0.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        label: Text("Phone/Email/Account"),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(height: 100.0.w),
                    SizedBox(
                      width: double.infinity,
                      height: 96.w,
                      child: FilledButton.icon(
                        onPressed: () {
                          // Get.offAndToNamed(Routes.)
                        },
                        icon: Text("Next"),
                        label: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
