part of 'index.dart';

class GamesView extends GetView<GamesController> {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: TabBar(
                  controller: controller.ctrl,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.green,
                  ),
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  padding: Gutter.zero,
                  labelPadding: Gutter.horizontal.xs,
                  tabs:
                      controller.tabs.tabs.map((tab) {
                        return Tab(
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.red),
                            child: Text("data"),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: controller.ctrl,
            children: [
              for (var i = 0; i < controller.tabs.tabs.length; i++)
                QueryBuilder(
                  ['query_game_configration'],
                  querGameConfiguration.call,
                  builder: (context, response) {
                    return Skeletonizer(
                      containersColor: Colors.grey,
                      enabled: response.isLoading,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemBuilder: (context, index) {
                          return Container(color: Colors.amberAccent);
                        },
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
