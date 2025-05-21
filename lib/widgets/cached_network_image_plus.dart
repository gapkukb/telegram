import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const _bg = Color(0xffededf2);
final placeholderImage = DecoratedBox(
  decoration: const BoxDecoration(color: _bg),
  child: Image.asset(
    "assets/images/empty_states/placeholder.png",
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.contain,
    opacity: const AlwaysStoppedAnimation(0.2),
  ),
);

Widget _p(BuildContext _, String __) => placeholderImage;
Widget _e(BuildContext _, String __, Object ___) => placeholderImage;

class CachedNetworkImagePlus extends CachedNetworkImage {
  CachedNetworkImagePlus(
    final String url, {
    super.key,
    super.httpHeaders,
    super.imageBuilder,
    super.progressIndicatorBuilder,
    super.fadeOutDuration = const Duration(milliseconds: 1000),
    super.fadeOutCurve = Curves.easeOut,
    super.fadeInDuration = const Duration(milliseconds: 500),
    super.fadeInCurve = Curves.easeIn,
    super.width = double.infinity,
    super.height = double.infinity,
    super.fit = BoxFit.cover,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.matchTextDirection = false,
    super.cacheManager,
    super.useOldImageOnUrlChange = false,
    super.color,
    super.colorBlendMode,
    super.filterQuality = FilterQuality.low,
    super.placeholderFadeInDuration,
    super.memCacheWidth,
    super.memCacheHeight,
    super.cacheKey,
    super.maxWidthDiskCache,
    super.maxHeightDiskCache,
    super.errorListener,
  }) : super(imageUrl: url, placeholder: _p, errorWidget: _e);
}
