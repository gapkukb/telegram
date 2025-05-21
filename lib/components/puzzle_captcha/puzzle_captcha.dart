part of 'index.dart';

class PuzzleCaptcha extends StatefulWidget {
  static const id = "PuzzleCaptcha";

  const PuzzleCaptcha({super.key});

  @override
  _PuzzleCaptchaState createState() => _PuzzleCaptchaState();
}

class _PuzzleCaptchaState extends State<PuzzleCaptcha> {
  double offset = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PuzzleCaptchaImage(offset),
        PuzzleCaptchaSlider(onChange: chagneHandler, offset: offset),
      ],
    );
  }

  void chagneHandler(double x) {
    setState(() {
      offset = x;
    });
  }
}
