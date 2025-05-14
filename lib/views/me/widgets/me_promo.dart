import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_plus/const/gutter.dart';
import 'package:super_plus/views/me/index.dart';

class MePromo extends GetView<MeController> {
  const MePromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: Gutter.horizontal.xs,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Gutter.xs),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://c66hkp.s3.ap-east-1.amazonaws.com/a344555a-28b6-4306-bcf0-7e210dd1b663",
          ),
        ),
      ),
      height: 100,
    );
  }
}
