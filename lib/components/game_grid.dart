import 'package:flutter/material.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/cached_network_image_plus.dart';
import 'package:super_plus/widgets/card_plus.dart';

class GameGrid extends StatelessWidget {
  final bool sliver;
  const GameGrid({super.key, this.sliver = true});

  @override
  Widget build(BuildContext context) {
    final dynamic builder = sliver ? SliverGrid.builder : GridView.builder;

    return builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Gutter.sm,
        mainAxisSpacing: Gutter.sm,
      ),
      itemBuilder: (context, index) {
        return CachedNetworkImagePlus(
          imageUrl:
              "https://pub.imgscache.com/compic/8a5fc870-4691-4b38-be87-f75c354c1dfc.jpg",
        );
        return CardPlus(
          imageUrl:
              "https://pub.imgscache.com/compic/8a5fc870-4691-4b38-be87-f75c354c1dfc.jpg",
          title: "我不信",
          subtitle: "我不信",
        );
      },
    );
  }
}
