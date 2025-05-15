part of 'index.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      route: Routes.dashboard,
      builder: (context) {
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: Routes.home,
            anchorRoute: Routes.dashboard,
          ),
          bottomNavigationBar: DashboardFooter(),
        );
      },
    );
    // return Column(
    //   children: [
    //     Container(color: Colors.amber, width: double.infinity, height: 25),
    //     Expanded(
    //       child: GetRouterOutlet.builder(
    //         route: Routes.dashboard,
    //         builder: (context) {
    //           return Scaffold(
    //             body: GetRouterOutlet(
    //               initialRoute: Routes.home,
    //               anchorRoute: Routes.dashboard,
    //             ),
    //             bottomNavigationBar: DashboardFooter(),
    //           );
    //         },
    //       ),
    //     ),
    //   ],
    // );
  }
}
