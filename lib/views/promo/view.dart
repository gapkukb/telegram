import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/helpers/open_webview.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class PromoPage extends GetView<PromoController> {
  const PromoPage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromoController>(
      builder: (_) {
        return Scaffold(
          // backgroundColor: Colors.red,
          body: Padding(
            padding: Gutter.horizontal.sm,
            child: SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    title: Tab(text: "PROMO"),
                    // pinned: true,
                    floating: true,
                    // bottom: TabBar(tabs: []),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.ac_unit_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.ac_unit_outlined),
                      ),
                    ],
                  ),
                  SliverFixedExtentList.builder(
                    itemCount: 20,
                    itemExtent: 320,
                    itemBuilder: buildItem,
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 70,
                      child: Text(
                        'More',
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff111111),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SliverGrid.builder(
                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 171 / 204,
                      crossAxisSpacing: Gutter.sm,
                      mainAxisSpacing: Gutter.sm,
                    ),
                    itemBuilder: buildMoreItem,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        openWebview();
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Gutter.xs),
              topRight: Radius.circular(Gutter.xs),
            ),
            child: Image.network(
              index.isEven
                  ? "https://pub.imgscache.com/compic/030f91af-6773-4f2a-9065-72887a07bab8.gif"
                  : "https://pub.imgscache.com/compic/da175b76-7b2a-4323-8f8b-4c2ec5f16e5b.png",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          buildTile(),
        ],
      ),
    );
  }

  Widget buildMoreItem(BuildContext context, int index) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Gutter.xs),
            topRight: Radius.circular(Gutter.xs),
          ),
          child: Image.network(
            index.isEven
                ? "https://pub.imgscache.com/compic/e9784325-7eb1-4b3f-8d02-ec5ac81e8b21.png"
                : "https://hkp-s3.imgscache.com/5593e635f4cf46c1a3959181dfd4dc31",
            width: double.infinity,
            height: 310,
            fit: BoxFit.cover,
          ),
        ),
        buildTile(),
      ],
    );
  }

  Widget buildTile() {
    return ListTile(
      minTileHeight: 0,
      contentPadding: Gutter.horizontal.sm,
      tileColor: Colors.grey.shade200,
      title: Text(
        "PERA MO BALIK KO",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Apr 29 2025 - May 31 2025",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 20, color: Color(0xff8286a3)),
      ),
      trailing: SizedBox(
        height: 48,
        child: FilledButton.tonal(
          onPressed: () {},
          child: Text(
            "GO",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 24,
              color: Color(0xffff5800),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
