part of 'index.dart';

class PuzzleCaptchaTrack extends SliderTrackShape with BaseSliderTrackShape {
  final double animationValue;
  final String? text;
  const PuzzleCaptchaTrack(this.animationValue, this.text) : super();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
    double additionalActiveTrackHeight = 0,
  }) {
    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.

    final ColorTween activeTrackColorTween = ColorTween(
      begin: sliderTheme.disabledActiveTrackColor,
      end: sliderTheme.activeTrackColor,
    );
    final ColorTween inactiveTrackColorTween = ColorTween(
      begin: sliderTheme.disabledInactiveTrackColor,
      end: sliderTheme.inactiveTrackColor,
    );
    final Paint activePaint =
        Paint()..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint =
        Paint()..color = inactiveTrackColorTween.evaluate(enableAnimation)!;

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    const trackRadius = Radius.circular(4.0);
    final Radius activeTrackRadius = trackRadius;

    context.canvas.drawRRect(
      RRect.fromLTRBR(
        thumbCenter.dx - (sliderTheme.trackHeight! / 2),
        trackRect.top,
        trackRect.right,
        trackRect.bottom,
        trackRadius,
      ),
      inactivePaint,
    );

    _drawParttern(
      context.canvas,
      Size(trackRect.right - trackRect.left, trackRect.height),
    );
    _drawText(
      context.canvas,
      Size(trackRect.right - trackRect.left, trackRect.height),
    );

    context.canvas.drawRRect(
      RRect.fromLTRBR(
        trackRect.left,
        trackRect.top - (additionalActiveTrackHeight / 2),
        thumbCenter.dx,
        trackRect.bottom + (additionalActiveTrackHeight / 2),
        activeTrackRadius,
      ),
      activePaint,
    );
  }

  void _drawText(Canvas canvas, Size size) {
    final v = animationValue;
    final shader = LinearGradient(
      colors: const [Colors.grey, Colors.white, Colors.grey],
      stops: [v - 0.1, v, v + 0.1],
    ).createShader(const Rect.fromLTWH(0, 0, 375, 30));

    final fore = Paint()..shader = shader;

    final textStyle = TextStyle(fontSize: 14, foreground: fore);

    final textSpan = TextSpan(text: text, style: textStyle);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    final xCenter = (size.width - textPainter.width) / 2;
    final yCenter = (size.height - textPainter.height) / 2;
    final offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
  }

  void _drawParttern(Canvas canvas, Size size) {
    final Path path_0 = Path();
    Paint paint_0 =
        Paint()
          ..color = const Color(0xffeeeeee)
          ..style = PaintingStyle.fill
          ..strokeWidth = 1;

    final w = 20.0;
    final h = 30.0;
    final dis = 20.0;
    final count = (375.0 / (dis + w)).ceil();
    double x = 0.0;

    for (var i = 0; i < count; i++) {
      x = i * (w + dis);

      path_0.moveTo(x, 0);
      path_0.lineTo(x + w / 2, 0);
      path_0.lineTo(x + w, h / 2);
      path_0.lineTo(x + w / 2, h);
      path_0.lineTo(x, h);
      path_0.lineTo(x + w / 2, h / 2);
      path_0.close();
    }

    canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool get isRounded => true;
}
