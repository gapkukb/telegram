import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:super_plus/widgets/spin.dart';

class Refresher extends StatelessWidget {
  final bool enable;
  const Refresher({super.key, this.enable = true});

  @override
  Widget build(BuildContext context) {
    return Spin(
      enable: enable,
      child: const Iconify(Jam.refresh, size: 18, color: Color(0xffff5800)),
    );
  }
}
