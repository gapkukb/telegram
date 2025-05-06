import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:telegram/gen/assets.gen.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'index.dart';

class AsidePage extends StatefulWidget {
  const AsidePage({Key? key}) : super(key: key);

  @override
  State<AsidePage> createState() => _AsidePageState();
}

class _AsidePageState extends State<AsidePage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _AsideViewGetX();
  }
}

class _AsideViewGetX extends GetView<AsideController> {
  const _AsideViewGetX({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(child: Text("AsidePage"));
  }

  // CachedNetworkImage(
  //                 imageUrl: "https://picsum.photos/seed/abd/300/200",
  //                 height: 200.w,
  //                 fit: BoxFit.cover,
  //               ),

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AsideController>(
      init: AsideController(),
      id: "aside",
      builder: (_) {
        return SafeArea(
          child: ListView(
            children:
                controller.menus.map((group) {
                  return Card(
                    margin: EdgeInsets.all(16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children:
                          group.map((menu) {
                            return ListTile(
                              // dense: true,
                              contentPadding: EdgeInsets.only(left: 160.w, right: 8.w),
                              title: Text(menu.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.w)),
                              leading: menu.leading ?? Iconify(menu.icon!, size: 48.w),
                              trailing: Iconify(menu.trailing ?? MaterialSymbols.arrow_forward_ios_rounded, size: 36.w),
                              onTap: menu.onTap,
                            );
                          }).toList(),
                    ),
                  );
                }).toList(),
          ),
        );
      },
    );
  }
}
