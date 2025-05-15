part of 'index.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(16);

    return Scaffold(
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
            collapsedHeight: 160,
            expandedHeight: 260,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                print(constraints..maxHeight);
                return CachedNetworkImage(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight - 60,
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
                PhoneTextField(),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: ButtonStyle(
                      visualDensity: VisualDensity(vertical: -4),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    child: Text("SIGN IN | SIGN UP"),
                  ),
                ),
                TermsPrivate(),
                OAuthWidget(),
                TermsWidget(),
                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
