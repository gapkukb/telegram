part of 'index.dart';

class Pulzz extends StatefulWidget {
  const Pulzz({super.key});

  @override
  _PulzzState createState() => _PulzzState();
}

class _PulzzState extends State<Pulzz> {
  double offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: Container(
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
                image: NetworkImage(
                  "https://c66hk.s3.ap-east-1.amazonaws.com/5b478f09-d8b5-45f0-b0d7-b83b9f0a3e4a",
                ),
              ),
            ),
            child: Transform.translate(
              offset: Offset(offset * 375, 0),
              child: Image.network(
                "https://c66hk.s3.ap-east-1.amazonaws.com/cb345165-49ab-48f7-b757-d8860e733553",
                width: 56,
                height: double.infinity,
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 30,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.black,
              trackHeight: 30,
              trackShape: const RoundSliderTrackShape(),
              // thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 4.0),
              padding: const EdgeInsets.all(0),
            ),
            child: Slider(
              value: offset,
              onChanged: (value) {
                setState(() {
                  offset = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  _down(DragDownDetails details) {
    print("_down");
  }

  _update(DragUpdateDetails details) {
    print("_update");
  }

  _end(DragEndDetails details) {
    print("_end");
  }

  _cancel() {
    print("_cancel");
  }
}

class RoundSliderTrackShape extends SliderTrackShape with BaseSliderTrackShape {
  const RoundSliderTrackShape();

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
    print("enableAnimation");
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
    final Radius trackRadius = const Radius.circular(4.0);
    final Radius activeTrackRadius = trackRadius;
    final bool isLTR = textDirection == TextDirection.ltr;
    final bool isRTL = textDirection == TextDirection.rtl;

    final bool drawInactiveTrack =
        thumbCenter.dx < (trackRect.right - (sliderTheme.trackHeight! / 2));
    if (drawInactiveTrack) {
      // Draw the inactive track segment.
      context.canvas.drawRRect(
        RRect.fromLTRBR(
          thumbCenter.dx - (sliderTheme.trackHeight! / 2),
          isRTL
              ? trackRect.top - (additionalActiveTrackHeight / 2)
              : trackRect.top,
          trackRect.right,
          isRTL
              ? trackRect.bottom + (additionalActiveTrackHeight / 2)
              : trackRect.bottom,
          isLTR ? trackRadius : activeTrackRadius,
        ),
        rightTrackPaint,
      );
      drawText(
        context.canvas,
        Size(trackRect.right - trackRect.left, trackRect.height),
        "Drag the slider to fit the puzzle",
      );
    }
    final bool drawActiveTrack =
        thumbCenter.dx > (trackRect.left + (sliderTheme.trackHeight! / 2));
    if (drawActiveTrack) {
      // Draw the active track segment.
      context.canvas.drawRRect(
        RRect.fromLTRBR(
          trackRect.left,
          isLTR
              ? trackRect.top - (additionalActiveTrackHeight / 2)
              : trackRect.top,
          thumbCenter.dx + (sliderTheme.trackHeight! / 2),
          isLTR
              ? trackRect.bottom + (additionalActiveTrackHeight / 2)
              : trackRect.bottom,
          isLTR ? activeTrackRadius : trackRadius,
        ),
        leftTrackPaint,
      );
    }

    final bool showSecondaryTrack =
        (secondaryOffset != null) &&
        (isLTR
            ? (secondaryOffset.dx > thumbCenter.dx)
            : (secondaryOffset.dx < thumbCenter.dx));

    if (showSecondaryTrack) {
      final ColorTween secondaryTrackColorTween = ColorTween(
        begin: sliderTheme.disabledSecondaryActiveTrackColor,
        end: sliderTheme.secondaryActiveTrackColor,
      );
      final Paint secondaryTrackPaint =
          Paint()..color = secondaryTrackColorTween.evaluate(enableAnimation)!;
      if (isLTR) {
        context.canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            thumbCenter.dx,
            trackRect.top,
            secondaryOffset.dx,
            trackRect.bottom,
            topRight: trackRadius,
            bottomRight: trackRadius,
          ),
          secondaryTrackPaint,
        );
      } else {
        context.canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            secondaryOffset.dx,
            trackRect.top,
            thumbCenter.dx,
            trackRect.bottom,
            topLeft: trackRadius,
            bottomLeft: trackRadius,
          ),
          secondaryTrackPaint,
        );
      }
    }
  }

  drawText(Canvas canvas, Size size, String text) {
    const textStyle = TextStyle(color: Colors.red, fontSize: 14);
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
}
