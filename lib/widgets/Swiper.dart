import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_state.dart';
// export 'package:carousel_slider/carousel_controller.dart';
// export 'package:carousel_slider/carousel_options.dart';

class SwiperPlus extends CarouselSlider {
  final Widget? Function(double offset, Widget child)? animationBuilder;

  /// The widget item builder that will be used to build item on demand
  /// The third argument is the PageView's real index, can be used to cooperate
  /// with Hero.
  @override
  final ExtendedIndexedWidgetBuilder? itemBuilder;

  /// A [MapController], used to control the map.
  final CarouselSliderControllerImpl _carouselController;

  @override
  final int? itemCount;

  SwiperPlus({
    required super.items,
    required super.options,
    super.disableGesture,
    super.carouselController,
    super.key,
    this.animationBuilder,
  }) : itemBuilder = null,
       itemCount = items != null ? items.length : 0,
       _carouselController =
           carouselController != null
               ? carouselController as CarouselSliderControllerImpl
               : CarouselSliderController() as CarouselSliderControllerImpl,
       super();

  /// The on demand item builder constructor
  SwiperPlus.builder({
    required this.itemCount,
    required this.itemBuilder,
    required super.options,
    super.disableGesture,
    CarouselSliderController? carouselController,
    super.key,
    this.animationBuilder,
  }) : _carouselController =
           carouselController != null
               ? carouselController as CarouselSliderControllerImpl
               : CarouselSliderController() as CarouselSliderControllerImpl,
       super(items: null);

  @override
  SwiperPlusState createState() => SwiperPlusState(_carouselController);
}

class SwiperPlusState extends CarouselSliderState {
  SwiperPlusState(super.carouselController);
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

    return (widget as SwiperPlus).animationBuilder?.call(itemOffset, wrapper) ??
        wrapper;
  }
}
