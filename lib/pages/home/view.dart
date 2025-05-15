part of 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(child: Text("HomePage"));
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xff044a48), Color(0xff1a1859)],
          center: Alignment.topCenter,
          radius: 1.0,
          stops: const [0.0, 1.0],
        ), // 渐变背景
      ),
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: ListView(children: [const HomeSwiper()]),
      ),
    );
  }
}
