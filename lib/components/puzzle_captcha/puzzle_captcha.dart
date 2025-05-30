part of 'index.dart';

class PuzzleCaptcha extends StatefulWidget {
  static const id = "PuzzleCaptcha";
  final void Function(String token) onSuccess;

  const PuzzleCaptcha({super.key, required this.onSuccess});

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
        const SizedBox(height: 8),
        PuzzleCaptchaSlider(
          onChange: chagneHandler,
          onComplete: onComplete,
          offset: offset,
        ),
      ],
    );
  }

  void chagneHandler(double x) {
    setState(() {
      offset = x;
    });
  }

  void onComplete(double offset) async {
    print("offset${(Get.width * offset).toInt()}");

    // await validatePuzzle(data: {"offset": offset})
    //     .then((value) {
    //       widget.onSuccess(value);
    //     })
    //     .catchError((err) {
    //       chagneHandler(0);
    //       //TODO:  重新请求图片
    //     });
  }
}
