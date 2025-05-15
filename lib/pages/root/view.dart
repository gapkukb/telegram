part of 'index.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  static final _appBar = AppBar(
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: RouterListener(
      builder: (context) {
        return Text(context.location);
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context) {
        final isDashboard = context.location.startsWith(Routes.dashboard);

        return Scaffold(
          backgroundColor: Colors.blue,
          appBar: isDashboard ? null : _appBar,
          body: GetRouterOutlet(
            initialRoute: AppPages.initial,
            anchorRoute: '/',
          ),
        );
      },
    );
  }
}
