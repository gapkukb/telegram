import 'package:flutter/material.dart';
import 'package:super_plus/components/game_card.dart';
import 'package:super_plus/const/gutter.dart';

class GameGrid extends StatelessWidget {
  final bool sliver;
  final bool liked;
  final bool showLike;
  final bool scorllable;

  const GameGrid({
    super.key,
    this.sliver = true,
    this.liked = false,
    this.showLike = true,
    this.scorllable = true,
  });

  @override
  Widget build(BuildContext context) {
    final dynamic builder = sliver ? SliverGrid.builder : GridView.builder;

    return builder(
      itemCount: 100,
      shrinkWrap: !scorllable,
      physics: scorllable ? null : NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 112 / 132,
        crossAxisSpacing: Gutter.xs,
        mainAxisSpacing: Gutter.xs,
      ),
      itemBuilder: (context, index) {
        return GameCard(
          onTapLike: (bool liked) {},
          liked: liked,
          showLike: showLike,
          imageUrl: "https://picsum.photos/seed/4$index/600/200",
          name: "阿西吧啊",
        );
      },
    );
  }
}
