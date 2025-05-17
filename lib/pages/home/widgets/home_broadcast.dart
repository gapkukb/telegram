import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:super_plus/const/gutter.dart';

class HomeBroadcast extends StatelessWidget {
  static const height = 52.0;

  const HomeBroadcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
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
          Spacer(),
          Text("123123"),
        ],
      ),
    );
  }

  static Widget get suffix {
    return Container(
      width: 50,
      height: height,
      decoration: BoxDecoration(
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
