import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/cached_network_image_plus.dart';

import '../index.dart';

/// hello
class GamesSwiper extends GetView<GamesController> {
  const GamesSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 20,
      options: CarouselOptions(
        aspectRatio: 2.8,
        enlargeFactor: 0.4,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enableInfiniteScroll: 1 > 0,
        autoPlay: true,
        // height: 10,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: Gutter.horizontal.xxs,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Gutter.xxs),
            child: CachedNetworkImagePlus(
              "https://picsum.photos/seed/4$itemIndex/600/200",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        );
      },
    );
  }
}
