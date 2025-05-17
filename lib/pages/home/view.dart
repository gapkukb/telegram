part of 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          HomeAppBar(),
          SliverToBoxAdapter(
            child: Container(
              height: 414,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -3.4),
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/unlogin-banner.png"),
                ),
              ),
              child: Column(
                children: [HomeBroadcast(), Spacer(), HomeVideos()],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10000)),

          // SliverToBoxAdapter(
          //   child: Image.asset(
          //     "assets/images/unlogin-banner.png",
          //     width: double.infinity,
          //     height: 385,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // SliverToBoxAdapter(child: HomeSwiper()),
        ],
      ),
    );
  }
}
