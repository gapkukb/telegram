part of 'index.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      init: SearchController(),
      id: "search",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: BackButton(),
            centerTitle: true,
            titleSpacing: 0,
            title: SizedBox(
              height: 36,
              child: CupertinoSearchTextField(
                controller: controller.search,
                style: TextStyle(fontSize: 12, height: 1.6),
                suffixMode: OverlayVisibilityMode.editing,
              ),
            ),
          ),
          body: SafeArea(
            child: Obx(
              () => ListView.builder(
                itemExtent: 48,
                itemCount: controller.filterdWords.length,
                itemBuilder: (context, index) {
                  final item = controller.filterdWords[index];

                  return ListTile(
                    dense: true,
                    leading: Icon(Icons.search),
                    title: item,
                    onTap: controller.handleTap,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
