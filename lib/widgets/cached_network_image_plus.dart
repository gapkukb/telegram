import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

final placeholderImage = Image.asset(
  "assets/images/empty_states/placeholder.png",
  width: double.infinity,
  fit: BoxFit.contain,
);

Widget placeholder(BuildContext _, String __) => placeholderImage;
Widget errorWidget(BuildContext _, String __, Object ___) => placeholderImage;

class CachedNetworkImagePlus extends CachedNetworkImage {
  CachedNetworkImagePlus(
    String url, {
    super.key,
    super.httpHeaders,
    super.imageBuilder,
    super.progressIndicatorBuilder,
    super.fadeOutDuration = const Duration(milliseconds: 1000),
    super.fadeOutCurve = Curves.easeOut,
    super.fadeInDuration = const Duration(milliseconds: 500),
    super.fadeInCurve = Curves.easeIn,
    super.width = double.infinity,
    super.height,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.matchTextDirection = false,
    super.cacheManager,
    super.useOldImageOnUrlChange = false,
    super.color,
    super.filterQuality = FilterQuality.low,
    super.colorBlendMode,
    super.placeholderFadeInDuration,
    super.memCacheWidth,
    super.memCacheHeight,
    super.cacheKey,
    super.maxWidthDiskCache,
    super.maxHeightDiskCache,
    super.errorListener,
  }) : super(imageUrl: url, placeholder: placeholder, errorWidget: errorWidget);
}
