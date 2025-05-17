part of 'index.dart';

class SwiperIndicator {
  final Widget Function(BuildContext context, List<Widget> children) builder;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final Widget Function(BuildContext context, int index, double aniValue)?
  animationBuilder;
  final double? width;
  final double? height;
  final double? spacing;
  final Color? color;
  final Widget? child;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;

  const SwiperIndicator({
    required this.builder,
    required this.itemBuilder,
    this.animationBuilder,
    this.alignment,
    this.padding,
    this.spacing,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.child,
    this.clipBehavior = Clip.none,
  });
}

// class _SwiperIndicatorState extends State<SwiperIndicator> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: widget.alignment,
//       padding: widget.padding,
//       color: widget.color,
//       decoration: widget.decoration,
//       foregroundDecoration: widget.foregroundDecoration,
//       width: widget.width,
//       height: widget.height,
//       constraints: widget.constraints,
//       margin: widget.margin,
//       transform: widget.transform,
//       transformAlignment: widget.transformAlignment,
//       clipBehavior: widget.clipBehavior,
//       key: widget.key,
//       child: widget.child,
//     );
//   }
// }
