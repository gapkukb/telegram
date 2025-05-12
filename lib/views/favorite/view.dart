import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:super_plus/components/empty_state.dart';
import 'package:super_plus/components/game_grid.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/widgets/card_plus.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({super.key});

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    final authticated = false;
    return GetBuilder<FavoriteController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: EmptyState(
                    state: Empty_State_Type.UNAUTHENTICATED,
                    onTap: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Divider(
                    color: Colors.black.withAlpha(40),
                    // height: 1,
                    thickness: 1,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: Gutter.sm,
                    right: Gutter.sm,
                    top: Gutter.sm,
                    bottom: Gutter.lg,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'HOT GAMES',
                      style: TextStyle(
                        fontSize: 36.w,
                        color: Color(0xff111111),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: Gutter.horizontal.sm,
                  sliver: GameGrid(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildUnauthticationView() {
    return Center(
      child: FilledButton.tonal(onPressed: () {}, child: Text("LOG IN")),
    );
  }
}
