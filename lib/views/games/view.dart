import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/views/games/widgets/games_body.dart';
import 'package:super_plus/views/games/widgets/games_swiper.dart';

import 'index.dart';

class GamesPage extends GetView<GamesController> {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GamesController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(child: CustomScrollView(slivers: [SliverToBoxAdapter(child: const GamesSwiper()), SliverPadding(padding: Gutter.all.sm, sliver: const GamesBody())])),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.state.scrollable.value = true;
              controller.update();
            },
          ),
        );
      },
    );
  }
}
