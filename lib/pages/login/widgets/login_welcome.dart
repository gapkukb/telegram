import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginWelcome extends StatelessWidget implements PreferredSizeWidget {
  const LoginWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to BingoPlus",
            style: TextStyle(
              height: 1,
              color: Color(0xff111111),
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Lucky Spin: ₱1 for a chance to win the mystery prize and a 1,000,000 Ampao unlimited times. Enjoy lightning fast withdrawals! ",
            style: TextStyle(height: 1, color: Color(0xff999999), fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0);
}
