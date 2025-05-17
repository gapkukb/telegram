part of 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 8,
        child: CustomScrollView(
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

            // SliverToBoxAdapter(child: SizedBox(height: 10000)),
            SliverAppBar(
              pinned: true,
              // floating: true,
              automaticallyImplyLeading: false,
              leading: SizedBox.shrink(),
              leadingWidth: 0,
              centerTitle: false,
              titleSpacing: 0,
              scrolledUnderElevation: 0,
              title: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  tabIcon("Hot", "hom_tab_hot"),
                  tabIcon("Slot", "hom_tab_slot"),
                  tabIcon("Preya", "hom_tab_preya"),
                  tabIcon("Bingo", "hom_tab_bingo"),
                  tabIcon("Poker", "hom_tab_poker"),
                  tabIcon("Casino", "hom_tab_casino"),
                  tabIcon("Arcade", "hom_tab_arcade"),
                  tabIcon("Sport", "hom_tab_sport"),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                  GameGrid(sliver: false, scorllable: false),
                ],
              ),
            ),

            SliverToBoxAdapter(child: Text("data")),
            SliverToBoxAdapter(child: SizedBox(height: 48)),
          ],
        ),
      ),
    );
  }

  Tab tabIcon(String tabName, String tabIcon) {
    return Tab(
      icon: Image.asset(
        "assets/images/$tabIcon.png",
        width: 28,
        height: 28,
        fit: BoxFit.contain,
      ),
      child: TextPlus(tabName, fontSize: 14),
    );
  }
}
