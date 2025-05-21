import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:super_plus/helpers/number.dart';
import 'package:super_plus/widgets/text_plus.dart';

class HomeBroadcast extends StatelessWidget {
  static const height = 52.0;

  const HomeBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
                gradient: LinearGradient(
                  colors: [Color(0xffc773f3), Color(0xff9c3be8)],
                ),
              ),
              child: CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: _buildItem,
                options: CarouselOptions(
                  height: height,
                  autoPlay: true,
                  scrollDirection: Axis.vertical,
                ),
              ),
            ),
          ),
          suffix,
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index, int realIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        spacing: 8,
        children: [
          Image.network(
            "https://bingoplus.com/externals/C66FM/img/_wms/_l/electronicgames/324C/C.jpg",
            width: 28,
            height: 28,
          ),
          const TextPlus('xxxxxxxx', color: Colors.white, fontSize: 12),
          const TextPlus('8:06:07 AM', color: Colors.white, fontSize: 12),
          const Spacer(),
          Image.asset("assets/images/balance-peso.webp", width: 20, height: 20),
          TextPlus.bold(
            amountize(123123, 0),
            color: const Color(0xffebf740),
            fontSize: 16,
          ),
        ],
      ),
    );
  }

  static Widget get suffix {
    return Container(
      width: 50,
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xff7922c2),
        borderRadius: BorderRadius.horizontal(right: Radius.circular(4)),
        image: DecorationImage(
          scale: 2.2,
          fit: BoxFit.none,
          image: NetworkImage(
            "https://bingoplus.com/assets/casino-rwXn6Em4.png",
          ),
        ),
      ),
    );
  }
}
