import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
