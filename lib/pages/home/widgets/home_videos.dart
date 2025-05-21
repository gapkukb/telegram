import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/pages/home/index.dart';
import 'package:super_plus/widgets/swiper/index.dart';

class HomeVideos extends GetView<HomeController> {
  const HomeVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 350,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home_video_bg.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Swiper.builder(
            itemCount: 6,
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
              height: 110,
            ),
            indicator: SwiperIndicator(
              spacing: 16,
              builder: (context, children) {
                return Row(spacing: 8, children: children);
              },
              itemBuilder: (context, index) {
                return Expanded(
                  child: Container(height: 26, color: Colors.amber),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
