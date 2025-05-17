import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/widgets/Swiper.dart';

class HomeVideos extends GetView<HomeController> {
  const HomeVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 350,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home_video_bg.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SwiperPlus.builder(
        itemCount: 10,
        carouselController: controller.swiperController,
        animationBuilder: (offset, child) {
          return Transform(
            alignment: Alignment.center,
            transform:
                Matrix4.identity()
                  ..setEntry(3, 2, 0.008)
                  ..rotateY(offset * 1.5 / pi),

            child: child,
          );
        },
        itemBuilder: (context, index, realIndex) {
          return Container(color: Colors.red);
        },
        options: CarouselOptions(
          aspectRatio: 3,
          enlargeFactor: 0.4,
          enlargeCenterPage: true,
          viewportFraction: 0.5,
          enableInfiniteScroll: 1 > 0,
          // enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          autoPlay: true,
        ),
      ),
    );
  }
}
