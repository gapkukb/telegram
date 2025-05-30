import 'package:flutter/material.dart';

final _increasement = Positioned(
  right: 2,
  top: 2,
  width: 24,
  height: 24,
  child: CustomPaint(painter: _GradientPainter(true)),
);

final _decreasement = Positioned(
  right: 2,
  bottom: 2,
  width: 24,
  height: 24,
  child: CustomPaint(painter: _GradientPainter(false)),
);

class BetOption extends StatefulWidget {
  const BetOption({super.key});

  @override
  _BetOptionState createState() => _BetOptionState();
}

class _BetOptionState extends State<BetOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffecedf5),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Flex(
            spacing: 2,
            mainAxisSize: MainAxisSize.max,
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8286a3),
                  height: 1,
                ),
              ),
              Text(
                "1.84",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff111111),
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ],
          ),
          Visibility(child: _increasement),
          Visibility(child: _decreasement),
        ],
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final bool increasment;

  _GradientPainter(this.increasment);

  static const strokeWidth = 3.0;

  @override
  void paint(Canvas canvas, Size size) {
    final color = increasment ? Colors.green : Colors.red;
    final gradient = LinearGradient(
      colors: [color.withAlpha(255), color.withAlpha(0), color.withAlpha(0)],
      begin: increasment ? Alignment.topRight : Alignment.bottomRight,
      end: increasment ? Alignment.bottomLeft : Alignment.topLeft,
    );
    Rect outerRect = (Offset.zero & size);

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(
      strokeWidth,
      strokeWidth,
      size.width - strokeWidth * 2,
      size.height - strokeWidth * 2,
    );

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRect(outerRect);
    Path path2 = Path()..addRect(innerRect);

    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
