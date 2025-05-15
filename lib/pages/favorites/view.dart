part of 'index.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final authticated = false;
    return GetBuilder<FavoritesController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: EmptyState(
                    state: Empty_State_Type.UNAUTHENTICATED,
                    onTap: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Divider(
                    color: Colors.black.withAlpha(40),
                    // height: 1,
                    thickness: 1,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: Gutter.xs,
                    right: Gutter.xs,
                    top: Gutter.xs,
                    bottom: Gutter.md,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'HOT GAMES',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff111111),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: Gutter.horizontal.sm,
                  sliver: GameGrid(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
