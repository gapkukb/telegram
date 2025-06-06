import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';
import 'package:super_plus/widgets/divider_plus.dart';
import '../index.dart';

/// hello
class LoginOauth extends GetView<LoginController> {
  const LoginOauth({super.key});

  @override
  Widget build(BuildContext context) {
    final style = IconButton.styleFrom(
      // shape: CircleBorder(side: BorderSide(color: Colors.grey)),
    );

    final size = 24.0;
    final Line = Expanded(child: Divider(color: Colors.grey.shade200));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        children: [
          DividerPlus(
            text: "OR",
            lineColor: Colors.grey.shade200,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {},
                icon: Iconify(Logos.facebook, size: size),
                style: style,
              ),
              IconButton(
                onPressed: () {},
                icon: Iconify(Logos.apple, size: size),
                style: style,
              ),
              IconButton(
                onPressed: () {},
                icon: Iconify(Logos.twitter, size: size - 3),
                style: style,
              ),
              IconButton(
                onPressed: () {},
                icon: Iconify(Logos.google_icon, size: size),
                style: style,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
