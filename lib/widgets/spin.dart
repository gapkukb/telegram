import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/jam.dart';

class Spin extends StatefulWidget {
  final Widget child;
  final bool enable;

  const Spin({super.key, required this.child, this.enable = true});

  @override
  State<Spin> createState() => _SpinState();
}

class _SpinState extends State<Spin> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    super.initState();
    _toggle();
  }

  void _toggle() {
    if (widget.enable) {
      _controller.repeat();
    } else {
      _controller.stop();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _toggle();
    return RotationTransition(
      alignment: Alignment.center,
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: widget.child, // widget,
    );
  }

  // @override
  // void didChangeDependencies() {
  //   print("didChangeDependencies");
  //   super.didChangeDependencies();
  //   _toggle();
  // }

  // @override
  // void didUpdateWidget(covariant Spin oldWidget) {
  //   print("didUpdateWidget");
  //   super.didUpdateWidget(oldWidget);
  //   _toggle();
  // }
}
