part of 'puzzle_captcha.dart';

Future<String?> networkImageToBase64(String imageUrl) async {
  http.Response response = await http.get(Uri.parse(imageUrl));
  final bytes = response.bodyBytes;
  return base64Encode(bytes);
}

class _PuzzleCaptchaWidget extends StatefulWidget {
  static const id = "dialogPuzzleCaptcha";

  const _PuzzleCaptchaWidget({super.key});

  @override
  _PuzzleCaptchaWidgetState createState() => _PuzzleCaptchaWidgetState();
}

class _PuzzleCaptchaWidgetState extends State<_PuzzleCaptchaWidget> {
  final sc = StreamController<PuzzleModel>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: sc.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          inspect(snapshot.error);
          _handleError(snapshot.error);
        }

        if (snapshot.hasError || !snapshot.hasData) return placeholderImage;
        final data = snapshot.data!.repData;

        return SizedBox(
          height: 400,
          child: SliderCaptchaClient(
            provider: SliderCaptchaClientProvider(
              puzzleBase64: data.originalImageBase64,
              pieceBase64: data.jigsawImageBase64,
              coordinatesY: -.2,
            ),
            onConfirm: (value) async {
              /// Can you verify captcha at here
              await Future.delayed(const Duration(seconds: 1));
              debugPrint(value.toString());
            },
          ),
        );
      },
    );
  }

  _query() {
    final ts = DateTime.now().millisecondsSinceEpoch;
    final data = {
      "captchaType": 'blockPuzzle',
      "clientUid": ts * Random().nextDouble(),
      "ts": ts,
    };

    queryPuzzle(data: data)
        .then((value) async {
          final originalImageBase64 = await networkImageToBase64(
            value.repData.originalImageBase64,
          );

          final jigsawImageBase64 = await networkImageToBase64(
            value.repData.jigsawImageBase64,
          );

          final val = value.copyWith(
            repData: value.repData.copyWith(
              jigsawImageBase64: jigsawImageBase64,
              originalImageBase64: originalImageBase64,
            ),
          );
          sc.add(val);
        })
        .catchError(sc.addError)
        .whenComplete(sc.close);
  }

  _handleError(Object? error) {
    late final String msg;
    if ((error is Map) && error["repCode"] == '6204') {
      msg = "Please try again after 60s";
    } else {
      msg = "Validation error, please try again";
    }
    Future.microtask(() {
      Get.showSnackbar(
        GetSnackBar(message: msg, duration: const Duration(seconds: 2)),
      );
      Get.closeDialog();
    });
  }

  @override
  void initState() {
    super.initState();
    _query();
  }

  @override
  void dispose() {
    super.dispose();
    sc.close();
  }
}
