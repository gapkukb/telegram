part of 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 8,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [HomeAppBar()];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return Container(color: Colors.amber);
                },
              ),
              GameGrid(),
              GameGrid(),
              GameGrid(),
              GameGrid(),
              GameGrid(),
              GameGrid(),
              GameGrid(),
            ],
          ),
          //   slivers: [
          //     HomeAppBar(),
          //     SliverFillRemaining(
          //       child: TabBarView(
          //         physics: NeverScrollableScrollPhysics(),
          //         children: [
          //           GridView.builder(
          //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //               crossAxisCount: 3,
          //               childAspectRatio: 1,
          //               mainAxisSpacing: 8,
          //               crossAxisSpacing: 8,
          //             ),
          //             itemBuilder: (context, index) {
          //               return Container(color: Colors.amber);
          //             },
          //           ),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //           GameGrid(sliver: false, scorllable: false),
          //         ],
          //       ),
          //     ),

          //     SliverToBoxAdapter(child: Text("data")),
          //     SliverToBoxAdapter(child: SizedBox(height: 48)),
          //   ],
        ),
      ),
    );
  }
}
