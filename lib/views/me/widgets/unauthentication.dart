import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/router/router.dart';

import '../index.dart';

/// hello
class Unauthentication extends GetView<MeController> {
  const Unauthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      // color: Colors.amber,
      child: Center(
        child: GFButton(
          color: Color(0xffff5800),
          shape: GFButtonShape.pills,
          onPressed: () {},
          child: Text("SIGN IN | SIGN UP"),
        ),
      ),
    );
  }
}
