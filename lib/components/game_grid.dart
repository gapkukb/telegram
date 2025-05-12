import 'package:flutter/material.dart';
import 'package:super_plus/components/game_card.dart';
import 'package:super_plus/const/gutter.dart';

class GameGrid extends StatelessWidget {
  final bool sliver;
  final bool liked;
  final bool showLike;

  const GameGrid({
    super.key,
    this.sliver = true,
    this.liked = false,
    this.showLike = true,
  });

  @override
  Widget build(BuildContext context) {
    final dynamic builder = sliver ? SliverGrid.builder : GridView.builder;

    return builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: Gutter.sm,
        mainAxisSpacing: Gutter.sm,
        childAspectRatio: 112 / 124,
      ),
      itemBuilder: (context, index) {
        return GameCard(
          onTapLike: (bool liked) {},
          liked: liked,
          showLike: showLike,
        );
      },
    );
  }
}
