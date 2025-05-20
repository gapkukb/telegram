part of 'index.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: QueryBuilder(
          ["game"],
          queryGameCategory.call,
          builder: (context, snapshot) {
            final length = controller.gameTabs.tabs.length;
            return Skeletonizer(
              // ignorePointers: true,
              containersColor: Colors.grey.shade100,
              enabled: snapshot.isLoading,
              child: DefaultTabController(
                length: length,
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [const GameCategoryTabs()];
                  },
                  body: ExtendedTabBarView(
                    shouldIgnorePointerWhenScrolling: false,
                    cacheExtent: controller.gameTabs.tabs.length,
                    children: List.generate(length, (index) {
                      final current = controller.gameTabs.tabs[index];

                      final subTabs =
                          snapshot.data?.gameInfoList
                              .firstWhereOrNull(
                                (game) => game.code == current.code,
                              )
                              ?.detail;

                      return GamePlatform(snapshot.isLoading, subTabs);
                    }),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
