import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/widgets/cached_network_image_plus.dart';

class HomeSwiper extends GetView<HomeController> {
  const HomeSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 5,
      options: CarouselOptions(
        aspectRatio: 3,
        enlargeFactor: 0.46,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enableInfiniteScroll: 1 > 0,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        autoPlay: true,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CachedNetworkImagePlus(
              "https://picsum.photos/seed/4$itemIndex/600/200",
            ),
          ),
        );
      },
    );
  }
}
