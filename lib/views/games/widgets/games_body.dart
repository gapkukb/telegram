import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fquery/fquery.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/helpers/open_webview.dart';
import 'package:super_plus/widgets/query_builder_with_skeleton.dart';

import '../index.dart';

class GamesBody extends GetView<GamesController> {
  const GamesBody({super.key});
  //"https://picsum.photos/seed/4$index/600/200"
  Widget buildCard(final int index) {
    return GestureDetector(
      onTap: () {
        openWebview();
      },
      child: Material(
        borderRadius: BorderRadius.circular(Gutter.xs),
        clipBehavior: Clip.hardEdge,
        color: Color(0xffdddddd),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "https://picsum.photos/seed/4$index/600/200",
              height: 156,
              fit: BoxFit.cover,
              placeholder:
                  (context, url) => Ink(color: Colors.blueGrey.shade100),
            ),
            Padding(
              padding: Gutter.horizontal.xs,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Pinata Wins111 Wins",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    constraints: BoxConstraints.tight(Size(24, 24)),
                    iconSize: 14,
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.favorite_outline, color: Colors.red),
                  ),
                ],
              ),
            ),
            if (index.isEven)
              Padding(
                padding: Gutter.horizontal.xs,
                child: Text(
                  "ArenaPlus games111",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xff8286a3), fontSize: 24),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 112 / 132,
        crossAxisSpacing: Gutter.sm,
        mainAxisSpacing: Gutter.sm,
      ),
      itemBuilder: (context, index) {
        return buildCard(index);
      },
    );
  }
}
