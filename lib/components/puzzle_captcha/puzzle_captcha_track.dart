part of 'index.dart';

const fontSize = 24.0;
final padding = (40.0 - fontSize) / 2;
final icon = Icons.arrow_forward_ios_outlined;
final TextPainter textPainter =
    TextPainter(textDirection: TextDirection.rtl)
      ..text = TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: icon.fontFamily,
          color: Colors.white,
        ),
      )
      ..layout();

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
    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
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
    final (
      Paint leftTrackPaint,
      Paint rightTrackPaint,
    ) = switch (textDirection) {
      TextDirection.ltr => (activePaint, inactivePaint),
      TextDirection.rtl => (inactivePaint, activePaint),
    };

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final rightTrackSegment = RRect.fromRectAndRadius(
      Rect.fromLTRB(
        trackRect.left - 20,
        trackRect.top,
        trackRect.right + 20,
        trackRect.bottom,
      ),
      const Radius.circular(4),
    );

    const borderWidth = 1;
    final border = RRect.fromRectAndRadius(
      Rect.fromLTRB(
        rightTrackSegment.left - borderWidth,
        rightTrackSegment.top - borderWidth,
        rightTrackSegment.right + borderWidth,
        rightTrackSegment.bottom + borderWidth,
      ),
      const Radius.circular(4),
    );

    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRRect(border, Paint()..color = Colors.black);
      context.canvas.drawRRect(rightTrackSegment, rightTrackPaint);
    }

    _drawParttern(context.canvas, Size(trackRect.left, trackRect.height));
    _drawText(
      context.canvas,
      Size(trackRect.right - trackRect.left, trackRect.height),
    );
    final rate = thumbCenter.dx / (trackRect.width + trackRect.left);

    final leftTrackSegment = RRect.fromRectAndRadius(
      Rect.fromLTRB(
        trackRect.left - 20,
        trackRect.top,
        thumbCenter.dx + 20 * rate,
        trackRect.bottom,
      ),
      const Radius.circular(4),
    );
    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRRect(leftTrackSegment, leftTrackPaint);
    }
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
    final xCenter = (size.width + 40 - textPainter.width) / 2;
    final yCenter = (size.height + 6 - textPainter.height) / 2;
    final offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
  }

  void _drawParttern(Canvas canvas, Size size) {
    final w = 20.0;
    final dis = 10.0;
    final count = (375.0 / (dis + w)).ceil();
    double x = 0.0;

    for (var i = 0; i < count; i++) {
      x = 20 + i * (w + dis);
      textPainter.paint(canvas, Offset(x - fontSize / 2, fontSize / 2));
    }

    // canvas.clipRect(Rect.fromLTWH(0, 0, size.width, size.height));
    // canvas.drawPath(path_0, paint_0);
  }
}
