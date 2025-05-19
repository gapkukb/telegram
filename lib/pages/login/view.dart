part of 'index.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(16);

    return Form(
      key: controller.formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        floatingActionButton: DialogPageBackButton(
          dy: 10,
          dx: 10,
          backgroundColor: Colors.black.withAlpha(88),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              snap: false,
              stretch: true,
              collapsedHeight: 190,
              expandedHeight: 280,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  return CachedNetworkImage(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight - 80,
                    imageUrl:
                        "https://pub.imgscache.com/compic/73a7a58a-f93d-4050-b419-ac2a61f9ec69.png",
                    fit: BoxFit.cover,
                    // scale: 0.1,
                    alignment: Alignment.center,
                  );
                },
              ),
              bottom: const LoginWelcome(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: Gutter.sm,
                right: Gutter.sm,
                // top: Gutter.sm,
              ),
              sliver: SliverList.list(
                children: [
                  Obx(() {
                    if (controller.isAccountMode.value)
                      return LoginAccountForm();
                    return LoginPhoneForm();
                  }),

                  SizedBox(height: 32),
                  LoginAgreement(),
                  LoginOauth(),
                  LoginTerms(),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
