part of 'index.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(16);

    return Scaffold(
      extendBodyBehindAppBar: false,
      floatingActionButton: DialogPageBackButton(
        dy: 10,
        dx: 10,
        backgroundColor: Colors.black.withAlpha(88),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Container(
        height: Get.height + kToolbarHeight,
        padding: EdgeInsets.only(top: 210),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
            image: CachedNetworkImageProvider(
              "https://pub.imgscache.com/compic/73a7a58a-f93d-4050-b419-ac2a61f9ec69.png",
            ),
          ),
        ),
        child: Material(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: radius,
            topRight: radius,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: Gutter.sm,
              right: Gutter.sm,
              top: Gutter.sm,
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Text(
                  "Welcome to BingoPlus",
                  style: TextStyle(
                    height: 1,
                    color: const Color(0xff111111),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Lucky Spin: ₱1 for a chance to win the mystery prize and a 1,000,000 Ampao unlimited times. Enjoy lightning fast withdrawals! ",
                  style: TextStyle(
                    height: 1,
                    color: const Color(0xff999999),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 16),
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
        ),
      ),
    );
  }
}
