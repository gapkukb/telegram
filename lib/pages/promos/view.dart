part of 'index.dart';

class PromosView extends GetView<PromosController> {
  const PromosView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Padding(
        padding: Gutter.horizontal.xs,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                title: const Tab(text: "PROMO"),
                // pinned: true,
                floating: true,
                // bottom: TabBar(tabs: []),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ac_unit_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.ac_unit_outlined),
                  ),
                ],
              ),

              SliverList.separated(
                itemCount: 10,
                itemBuilder: buildItem,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                },
              ),

              // SliverFixedExtentList.builder(
              //   itemCount: 20,
              //   itemExtent: 160,
              //   itemBuilder: buildItem,
              // ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 36,
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff111111),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SliverGrid.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 171 / 202,
                  crossAxisSpacing: Gutter.xs,
                  mainAxisSpacing: Gutter.xs,
                ),
                itemBuilder: buildMoreItem,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        openWebview();
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Gutter.xs),
              topRight: Radius.circular(Gutter.xs),
            ),
            child: Image.network(
              index.isEven
                  ? "https://pub.imgscache.com/compic/030f91af-6773-4f2a-9065-72887a07bab8.gif"
                  : "https://pub.imgscache.com/compic/da175b76-7b2a-4323-8f8b-4c2ec5f16e5b.png",
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          buildTile(),
        ],
      ),
    );
  }

  Widget buildMoreItem(BuildContext context, int index) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Gutter.xs),
            topRight: Radius.circular(Gutter.xs),
          ),
          child: Image.network(
            index.isEven
                ? "https://pub.imgscache.com/compic/e9784325-7eb1-4b3f-8d02-ec5ac81e8b21.png"
                : "https://hkp-s3.imgscache.com/5593e635f4cf46c1a3959181dfd4dc31",
            width: double.infinity,
            height: 156,
            fit: BoxFit.cover,
          ),
        ),
        buildTile(),
      ],
    );
  }

  Widget buildTile() {
    return ListTile(
      minTileHeight: 0,
      contentPadding: Gutter.horizontal.sm,
      tileColor: Colors.grey.shade200,
      title: const Text(
        "PERA MO BALIK KO",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text(
        "Apr 29 2025 - May 31 2025",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 10, color: Color(0xff8286a3)),
      ),
      trailing: SizedBox(
        height: 24,
        child: FilledButton.tonal(
          onPressed: () {},
          child: const Text(
            "GO",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xffff5800),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
