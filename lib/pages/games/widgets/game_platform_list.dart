import 'package:flutter/material.dart';
import 'package:fquery/fquery.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_plus/api/game_api.dart';
import 'package:super_plus/components/game_card.dart';
import 'package:super_plus/models/game.dart';

class GamePlatformList extends StatefulWidget {
  final bool loading;
  final Detail detail;
  const GamePlatformList(this.loading, this.detail, {super.key});

  @override
  _GamePlatformListState createState() => _GamePlatformListState();
}

class _GamePlatformListState extends State<GamePlatformList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return QueryBuilder(
      ["game_platform_list", widget.detail.allFile ?? 1],
      enabled: widget.detail.allFile != null,
      () => queryGameByPlatform(data: {"allFile": widget.detail.allFile}),
      retryCount: 0,
      builder: (context, snapshot) {
        if (snapshot.isError) return const Text("no data");

        return Skeletonizer(
          enabled: widget.loading || snapshot.isLoading,
          containersColor: Colors.grey,
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: snapshot.isLoading ? null : snapshot.data!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 136,
            ),
            itemBuilder: (context, index) {
              final game = snapshot.data?[index];
              if (game == null) return const SizedBox.shrink();
              return GameCard(
                name: game.gameName ?? "",
                imageUrl: game.gameImageNew ?? game.gameImageBigNew ?? "",
              );
            },
          ),
        );
      },
    );
  }
}
