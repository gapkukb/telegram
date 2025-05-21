import 'package:flutter/widgets.dart';
import 'package:super_plus/pages/home/widgets/home_broadcast.dart';
import 'package:super_plus/pages/home/widgets/home_videos.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 60, bottom: 94),
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment(0, -1.2),
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/unlogin-banner.png"),
        ),
      ),
      child: const Column(children: [HomeBroadcast(), Spacer(), HomeVideos()]),
    );
  }
}
