part of 'index.dart';

class MeView extends GetView<MeController> {
  const MeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MeAppBar(),
      body: ListView(
        children: [
          DecoratedBox(
            position: DecorationPosition.background,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/user_bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment(0, -1),
                // scale: 0.4,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: Gutter.sm,
                right: Gutter.sm,
                top: Gutter.sm,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // SliverToBoxAdapter(child: const Unauthentication()),
                  const MeSynopsis(),

                  SizedBox(height: Gutter.xs),

                  const MeBalance(),

                  SizedBox(height: Gutter.xs),

                  const MeMainMenu(),
                ],
              ),
            ),
          ),
          SizedBox(height: Gutter.xs),
          const MeNoticeBar(),
          SizedBox(height: Gutter.xs),
          SizedBox(
            height: 36,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: Gutter.horizontal.xs,
              itemCount: 2,
              separatorBuilder: (context, index) => SizedBox(width: Gutter.xs),
              itemBuilder: (context, index) {
                final selected = true;
                final color = selected ? Colors.white : Colors.black;
                final bgcolor = selected ? Colors.red : Colors.white;

                return FilledButton.tonalIcon(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: bgcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Gutter.xxs),
                      side: BorderSide(color: color),
                    ),
                  ),

                  label: Text("Gcash", style: TextStyle(color: color)),
                  icon: Iconify(Wpf.add_image, size: 16, color: color),
                );
              },
            ),
          ),
          SizedBox(height: Gutter.xs),
          GridView(
            primary: false,
            shrinkWrap: true,
            padding: Gutter.horizontal.xs,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 40,
              crossAxisSpacing: Gutter.xs,
              mainAxisSpacing: Gutter.xs,
            ),
            children: List.generate(6, (index) {
              return ChipButton(text: "+5,000", selected: index == 0);
            }),
          ),

          SizedBox(height: Gutter.xs),

          CellGroup(
            inset: true,
            children: [
              Cell(
                onTap: () {
                  Get.toNamed('/share');
                },
                title: "邀请好友",
                value: "分享有礼",
                isLink: true,
              ),
              const Cell(title: "我的权益", isLink: true),
              const Cell(title: "KYC认证", isLink: true),
            ],
          ),

          SizedBox(height: Gutter.xxl),

          Padding(
            padding: Gutter.horizontal.xs,
            child: GFButton(
              onPressed: () {},
              blockButton: true,
              color: Colors.red,
              size: 44,
              shape: GFButtonShape.standard,
              child: const Text("LOG OUT", style: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(height: Gutter.xs),
        ],
      ),
    );
  }
}
