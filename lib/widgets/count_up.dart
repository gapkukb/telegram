import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class CountUp extends StatelessWidget {
  final num value;
  const CountUp({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      value: value,
      fractionDigits: 2, // decimal precision
      thousandSeparator: ',',
      // suffix: "%",
      textStyle: TextStyle(fontSize: 40, color: value >= 0 ? Colors.green : Colors.red),
    );
  }
}
