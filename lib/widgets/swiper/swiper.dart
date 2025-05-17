part of 'index.dart';

class Swiper extends CarouselSlider {
  final Widget? Function(double offset, Widget child)? animationBuilder;
  final SwiperIndicator? indicator;

  /// The widget item builder that will be used to build item on demand
  /// The third argument is the PageView's real index, can be used to cooperate
  /// with Hero.
  @override
  final ExtendedIndexedWidgetBuilder? itemBuilder;

  /// A [MapController], used to control the map.
  final CarouselSliderControllerImpl _carouselController;

  @override
  final int? itemCount;

  Swiper({
    required super.items,
    required super.options,
    super.disableGesture,
    super.carouselController,
    super.key,
    this.animationBuilder,
    this.indicator,
  }) : itemBuilder = null,
       itemCount = items != null ? items.length : 0,
       _carouselController =
           carouselController != null
               ? carouselController as CarouselSliderControllerImpl
               : CarouselSliderController() as CarouselSliderControllerImpl,
       super();

  /// The on demand item builder constructor
  Swiper.builder({
    required this.itemCount,
    required this.itemBuilder,
    required super.options,
    super.disableGesture,
    CarouselSliderController? carouselController,
    super.key,
    this.animationBuilder,
    this.indicator,
  }) : _carouselController =
           carouselController != null
               ? carouselController as CarouselSliderControllerImpl
               : CarouselSliderController() as CarouselSliderControllerImpl,
       super(items: null);

  @override
  _SwiperState createState() => _SwiperState(_carouselController);
}

class _SwiperState extends CarouselSliderState {
  _SwiperState(super.carouselController);
  @override
  Widget getEnlargeWrapper(
    Widget? child, {
    double? width,
    double? height,
    double? scale,
    required double itemOffset,
  }) {
    final wrapper = super.getEnlargeWrapper(
      child,
      width: width,
      height: height,
      scale: scale,
      itemOffset: itemOffset,
    );

    return (widget as Swiper).animationBuilder?.call(itemOffset, wrapper) ??
        wrapper;
  }

  @override
  void changeMode(CarouselPageChangedReason mode) {
    super.changeMode(mode);
    if (mode == CarouselPageChangedReason.timed) {
      print(carouselState!.pageController!.page!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final body = super.build(context);
    final widget_ = (widget as Swiper);
    final indicator = widget_.indicator;
    if (indicator == null) return body;
    final children = List.generate(
      widget_.itemCount!,
      (index) => indicator.itemBuilder(context, index),
    );
    final indicatorWidget = indicator.builder(context, children);

    return Flex(
      spacing: indicator.spacing ?? 0,
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      children: [body, indicatorWidget],
    );
  }
}
