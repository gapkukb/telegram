import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';

import '../index.dart';

/// hello
class GamesSwiper extends GetView<GamesController> {
  const GamesSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 20,
      options: CarouselOptions(
        aspectRatio: 8 / 3,
        enlargeFactor: 0.4,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enableInfiniteScroll: 1 > 0,
        autoPlay: true,
        height: 200.w,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: Gutter.horizontal.xs,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0.w),
            child: CachedNetworkImage(
              imageUrl: "https://picsum.photos/seed/4$itemIndex/600/200",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              placeholder: (context, url) {
                return Ink(color: Colors.grey);
              },
            ),
          ),
        );
      },
    );
  }
}
