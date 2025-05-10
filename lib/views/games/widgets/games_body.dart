import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_plus/const/gutter.dart';

import '../index.dart';

class GamesBody extends GetView<GamesController> {
  const GamesBody({super.key});

  Widget buildCard(final int index) {
    return Container(width: double.infinity, height: double.infinity, decoration: BoxDecoration(image: DecorationImage(image: CachedNetworkImageProvider("https://picsum.photos/seed/4$index/600/200", maxHeight: 10), fit: BoxFit.cover), color: Colors.grey));
  }

  @override
  Widget build(BuildContext context) {
    return QueryBuilder(
      const [],
      () => Future.delayed(Duration(seconds: 2)),
      builder: (context, data) {
        return Skeletonizer.sliver(
          enabled: data.isLoading,
          containersColor: Colors.grey,
          child: SliverGrid.builder(
            itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1 / 1.3, crossAxisSpacing: Gutter.xs, mainAxisSpacing: Gutter.xs),
            itemBuilder: (context, index) {
              return buildCard(index);
            },
          ),
        );
      },
    );
  }
}
