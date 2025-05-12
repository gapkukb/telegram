import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/cached_network_image_plus.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/wpf.dart';

class GameCard extends StatelessWidget {
  final bool showLike;
  final bool liked;
  final bool disabled;
  final void Function(bool liked)? onTapLike;
  final void Function()? onTap;

  const GameCard({
    super.key,
    this.showLike = false,
    this.liked = false,
    this.disabled = false,
    this.onTapLike,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final padding = Gutter.horizontal.sm;

    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(Gutter.sm),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Color(0xffeeeeee),
        child: Column(
          children: [
            _poster,
            Padding(
              padding: padding,
              child:
                  showLike
                      ? Row(children: [Expanded(child: _title), _like])
                      : _title,
            ),
            Padding(padding: padding, child: _subtitle),
          ],
        ),
      ),
    );
  }

  Widget get _poster {
    final poster = CachedNetworkImagePlus(
      "https://pub.imgscache.com/compic/8a5fc870-4691-4b38-be87-f75c354c1dfc.jpg",
      height: 156.w,
    );

    if (!disabled) {
      return Stack(
        children: [
          poster,
          Positioned.fill(
            child: Material(
              color: Colors.black.withAlpha(128),
              child: Center(
                child: Iconify(
                  Wpf.maintenance,
                  color: Colors.white.withAlpha(200),
                  size: 48.w,
                ), // widget,
              ),
            ),
          ),
        ],
      );
    }
    return poster;
  }

  Widget get _title {
    return Text(
      "Pinata Wins111 Wins",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      softWrap: false,
      style: TextStyle(fontSize: 24.w, fontWeight: FontWeight.bold, height: 2),
    );
  }

  Widget get _subtitle {
    return Text(
      "fortune gems Orthodox sequel",
      softWrap: false,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 20.w, color: Color(0xff8286a3), height: 1.5),
    );
  }

  Widget get _like {
    final icon = liked ? Icons.favorite : Icons.favorite_outline;
    final color = liked ? Colors.red : Colors.grey;

    return SizedBox(
      width: 48.w,
      height: 48.w,
      child: IconButton(
        // color: Colors.amber,
        onPressed: () {
          onTapLike?.call(liked);
        },
        iconSize: 14,
        padding: EdgeInsets.zero,
        icon: Icon(icon, color: color),
      ),
    );
  }
}
