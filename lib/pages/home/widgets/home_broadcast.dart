import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBroadcast extends StatelessWidget {
  const HomeBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
                gradient: LinearGradient(
                  colors: [Color(0xffc773f3), Color(0xff9c3be8)],
                ),
              ),
              child: CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: _buildItem,
                options: CarouselOptions(
                  height: 40,
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
          Spacer(),
          Text("123123"),
        ],
      ),
    );
  }

  static Widget get suffix {
    return SizedBox(
      width: 60,
      height: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xff7922c2),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(4)),
        ),
        child: Image.network(
          "https://bingoplus.com/assets/casino-rwXn6Em4.png",
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
