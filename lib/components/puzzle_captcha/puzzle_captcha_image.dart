part of 'index.dart';

class PuzzleCaptchaImage extends StatefulWidget {
  final double offset;
  const PuzzleCaptchaImage(this.offset, {super.key});

  @override
  _PuzzleCaptchaImageState createState() => _PuzzleCaptchaImageState();
}

class _PuzzleCaptchaImageState extends State<PuzzleCaptchaImage> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Transform.translate(
              offset: Offset(widget.offset * (constraints.maxWidth - 56), 0),
              child: Image.network(
                "https://c66hk.s3.ap-east-1.amazonaws.com/cb345165-49ab-48f7-b757-d8860e733553",
                width: 56,
                height: double.infinity,
                fit: BoxFit.fill,
                alignment: Alignment.topLeft,
              ),
            );
          },
        ),
      ),
    );
  }
}
