import 'package:flutter/material.dart';
import 'package:super_plus/widgets/icon_plus.dart';
import 'package:super_plus/widgets/refresher.dart';
import 'package:super_plus/widgets/text_plus.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      height: 40,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconPlus(
                    AssetImage("assets/images/balance-peso.png"),
                    size: 18,
                  ),
                  TextPlus("123123123", color: Color(0xffff5800)),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconPlus(
                    AssetImage("assets/images/balance-peso.png"),
                    size: 18,
                  ),
                  TextPlus("123123123", color: Color(0xffff5800)),
                ],
              ),
            ],
          ),
          const _Refresher(),

          RawMaterialButton(
            onPressed: () {},
            fillColor: const Color(0xffff5800),
            constraints: const BoxConstraints.tightFor(width: 64, height: 40),
            child: const TextPlus("Deposit", color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _Refresher extends StatefulWidget {
  const _Refresher({super.key});

  @override
  State<_Refresher> createState() => _RefresherState();
}

class _RefresherState extends State<_Refresher>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 28,
      height: 40,
      child: Center(child: Refresher(enable: true)),
    );
  }
}
