part of "index.dart";

class PuzzleCaptchaSlider extends StatefulWidget {
  final double offset;
  final double height;
  final void Function(double offset) onChange;
  final void Function(double offset) onComplete;

  const PuzzleCaptchaSlider({
    super.key,
    this.offset = 0.0,
    this.height = 40,
    required this.onComplete,
    required this.onChange,
  });

  @override
  _PuzzleCaptchaSliderState createState() => _PuzzleCaptchaSliderState();
}

class _PuzzleCaptchaSliderState extends State<PuzzleCaptchaSlider>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    final theme = SliderTheme.of(context).copyWith(
      trackHeight: widget.height,
      // padding: EdgeInsets.zero,
      inactiveTrackColor: Color(0xfff2f2f2),
      activeTrackColor: Color(0xff1aab42),
      // thumbShape: PuzzleCaptchaThumb(),
      thumbShape: RoundSliderThumbShape(),
    );

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SliderTheme(
          data: theme.copyWith(
            trackShape: PuzzleCaptchaTrack(
              controller.value,
              "Slide to fit the puzzle",
            ),
          ),
          child: child!,
        );
      },
      child: Slider(
        value: widget.offset,
        onChanged: widget.onChange,
        onChangeEnd: widget.onComplete,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this)
      ..repeat(period: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
