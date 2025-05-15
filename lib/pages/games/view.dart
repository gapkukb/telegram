part of 'index.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: const GamesSwiper()),
            SliverPadding(padding: Gutter.all.xs, sliver: const GameGrid()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.scrollable.value = true;
          controller.update();
        },
      ),
    );
  }
}
