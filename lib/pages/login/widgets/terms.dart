import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/gen/assets.gen.dart';

import '../index.dart';

/// hello
class TermsWidget extends GetView<LoginController> {
  const TermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 13,
        color: Color(0xff999999),
        height: 1.5,
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The following personalities are NOT ALLOWED to register and/or play in this online gaming website:',
                ),
                Text(
                  '\u2022 Government Official or employee connected directly with the operation of the Government or any of its agencies.',
                ),
                Text(
                  '\u2022 Members of the Armed Forces of the Philippines, including the Army, Navy, Air Force, or the Philippine National Police.',
                ),
                Text('\u2022 Persons under 21 years of age.'),
                Text(
                  "\u2022 Persons included in the PAGCOR's National Database of Restricted Persons (NDRP).",
                ),
                Text('\u2022 Gaming Employment License (GEL) holder.'),
                Text(
                  'Funds or credits in the account of player who is found ineligible to play shall mean forfeiture of said funds/credits in favor of the Government.',
                ),
                Text(
                  'Keep online gaming private. Avoid playing online games in open and public spaces.',
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.images.pagcor.image(width: 150),
                Assets.images.a21age.image(width: 150),
              ],
            ),
          ),
          const Center(
            child: Text(
              "Powered by DigiPlus, a Fortune Southeast Asia 500 company",
              style: TextStyle(fontSize: 10, color: Color(0xffcccccc)),
            ),
          ),
        ],
      ),
    );
  }
}
