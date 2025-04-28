import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:telegram/widgets/gridview/GridDelegateWithSpan.dart';
import 'index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    final users = controller.state.fakeUsers;
    return Skeletonizer(
      enabled: false,
      ignoreContainers: true,
      switchAnimationConfig: SwitchAnimationConfig(
        duration: Duration(seconds: 3),
      ),
      child: GridView.builder(
        gridDelegate: GridDelegateWithSpan(
          childAspectRatio: 132 / 146,
          crossAxisCount: 3,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.w,
          span: (index) {
            if (index == 0) {
              return Span(col: 2);
            }
            return null;
          },
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            splashColor: Colors.amber,
            title: Text(
              'The title goes here',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('Subtitle here'),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text("HomePage")),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
