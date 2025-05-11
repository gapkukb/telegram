import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nil/nil.dart';
import 'package:super_plus/const/gutter.dart';

enum Empty_State_Type { FAVORITE, UNAUTHENTICATED, BAD_NETWORK, MAINTAINENCE }

class EmptyState extends StatelessWidget {
  final Empty_State_Type state;
  final void Function() onTap;
  const EmptyState({super.key, required this.state, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (state == Empty_State_Type.UNAUTHENTICATED) return buildLogin(context);
    if (state == Empty_State_Type.FAVORITE) return buildFavorite(context);
    return nil;
  }

  Widget buildFavorite(BuildContext context) {
    return buildBase(
      "assets/images/empty_states/favorite.png",
      "You have not played games yet!",
      "PLAY NOW",
    );
  }

  Widget buildLogin(BuildContext context) {
    return buildBase(
      "assets/images/empty_states/favorite.png",
      "Login to play interesting games",
      "SIGN IN | SIGN UP",
    );
  }

  Widget buildBase(String imageUrl, String text, String buttonText) {
    return Column(
      children: [
        Image.asset(imageUrl, width: 370.w),
        Text(text, style: TextStyle(color: Color(0xff8286a3), fontSize: 24.w)),
        SizedBox(height: Gutter.lg),
        GFButton(
          onPressed: () {},
          shape: GFButtonShape.pills,
          color: Color(0xffFF5800),
          padding: Gutter.horizontal.xxl,
          child: Text(
            buttonText,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: Gutter.lg),
      ],
    );
  }
}
