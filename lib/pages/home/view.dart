part of 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // HomeAppBar(),
          SliverToBoxAdapter(child: HomeBroadcast()),

          SliverToBoxAdapter(
            child: Image.asset(
              "assets/images/unlogin-banner.png",
              width: double.infinity,
              height: 385,
              fit: BoxFit.cover,
            ),
          ),
          SliverToBoxAdapter(child: HomeSwiper()),
        ],
      ),
    );
  }
}
