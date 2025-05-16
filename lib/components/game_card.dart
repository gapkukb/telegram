import 'package:flutter/material.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/helpers/open_webview.dart';
import 'package:super_plus/widgets/cached_network_image_plus.dart';
import 'package:super_plus/widgets/text_plus.dart';

class GameCard extends StatelessWidget {
  final bool showLike;
  final bool liked;
  final bool disabled;
  final String name;
  final String imageUrl;
  final void Function(bool liked)? onTapLike;
  final void Function()? onTap;

  const GameCard({
    super.key,
    this.showLike = false,
    this.liked = false,
    this.disabled = false,
    this.onTapLike,
    this.onTap,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        openWebview();
      },
      child: Material(
        borderRadius: BorderRadius.circular(Gutter.xxs),
        clipBehavior: Clip.hardEdge,
        color: Color(0xffdddddd),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImagePlus(imageUrl, height: 90, fit: BoxFit.cover),
            // SizedBox(height: 8),
            Padding(
              padding: Gutter.horizontal.xs,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: IconButton(
                      onPressed: () {},
                      iconSize: 14,
                      icon: Icon(Icons.favorite_outline, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: Gutter.horizontal.xs,
              child: TextPlus(
                "游戏供应商游戏供应商",
                fontSize: 10,
                color: Colors.grey,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
