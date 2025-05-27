part of 'index.dart';

class PuzzleCaptchaThumb extends SliderComponentShape {
  final double size;
  final Radius radius;

  PuzzleCaptchaThumb({
    this.size = 40,
    this.radius = const Radius.circular(4.0),
  });

  @override
  ui.Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.square(size);
  }

  @override
  void paint(
    PaintingContext context,
    ui.Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required ui.TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required ui.Size sizeWithOverflow,
  }) {
    final paint = Paint()..color = Colors.black;
    final dx = center.dx - size / 2;

    final rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(center.dx, 0, 40, 40),
      Radius.circular(4),
    );

    context.canvas.drawRRect(rrect, paint);

    const fontSize = 32.0;
    final icon = Icons.arrow_forward_ios_outlined;
    final padding = (size - fontSize) / 2;

    TextPainter textPainter = TextPainter(textDirection: TextDirection.rtl);
    textPainter.text = TextSpan(
      text: String.fromCharCode(icon.codePoint),
      style: TextStyle(
        fontSize: 24.0,
        fontFamily: icon.fontFamily,
        color: Colors.white,
      ),
    );
    textPainter.layout();
    textPainter.paint(context.canvas, Offset(center.dx + 10.0, 8.0));
  }
}
