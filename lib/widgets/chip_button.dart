import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  final bool selected;
  final void Function()? onTap;
  final String text;
  final TextStyle? style;
  final Color color;

  const ChipButton({
    super.key,
    this.selected = false,
    this.onTap,
    required this.text,
    this.style,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: selected ? color : Colors.grey.withAlpha(128),
                ),
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                gradient:
                    selected
                        ? LinearGradient(
                          begin: const Alignment(-0.5, -4),
                          end: Alignment.bottomRight,
                          colors: [Colors.transparent, color],
                          stops: [0.85, 0.5],
                        )
                        : null,
              ),
              child:
                  selected
                      ? const Align(
                        alignment: Alignment(1, 1),
                        child: Icon(Icons.check, color: Colors.white, size: 16),
                      )
                      : null,
            ),
          ),
          Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18).merge(style),
            ),
          ),
        ],
      ),
    );
  }
}
