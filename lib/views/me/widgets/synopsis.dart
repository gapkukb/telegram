import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/router/router.dart';

import '../index.dart';

/// hello
class MeSynopsis extends GetView<MeController> {
  const MeSynopsis({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: Gutter.zero,
      minLeadingWidth: 60,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: CachedNetworkImageProvider(
          "https://picsum.photos/seed/abd/200/200",
        ),
      ),
      title: Text(
        "这是一个超级长的用户昵称",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        "上次登录时间：2020-12-12 10:00:00",
        style: TextStyle(color: Colors.white.withAlpha(125)),
      ),
    );
  }
}
