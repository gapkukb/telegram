import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_plus/widgets/gridview/GridDelegateWithSpan.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    final gap = 8.w;
    return GridView.builder(
      itemCount: 38,
      gridDelegate: GridDelegateWithSpan(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: gap,
        mainAxisSpacing: gap,
        span: (index) {
          if (index == 1) {
            return Span(row: 2, col: 2);
          }
        },
      ),
      itemBuilder: (context, index) {
        return Container(color: Colors.red, child: Center(child: Text("$index", style: TextStyle(color: Colors.white))));
      },
    );
  }
}
