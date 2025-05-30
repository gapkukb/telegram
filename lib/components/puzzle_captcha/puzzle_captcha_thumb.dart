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
    final Canvas canvas = context.canvas;
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final Color color = colorTween.evaluate(enableAnimation)!;

    final path = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: 40, height: 40),
      const Radius.circular(4.0),
    );

    canvas.drawRRect(path, Paint()..color = color);

    textPainter.paint(
      context.canvas,
      Offset(center.dx - fontSize / 2, fontSize / 2),
    );
  }
}
