part of 'index.dart';

class PlayingView extends GetView<PlayingController> {
  const PlayingView({super.key});

  static const duration = Duration(milliseconds: 300);
  static const size = 20.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          WebViewWidget(controller: controller.webview),
          Obx(() => _header),
          Obx(() => _trigger),
        ],
      ),
    );
  }

  Widget get _header {
    return AnimatedPositioned(
      top: controller.showHeader.value ? 0 : -100,
      left: 0,
      right: 0,
      height: 56,
      duration: duration,
      child: AnimatedOpacity(
        duration: duration,
        opacity: controller.showHeader.value ? 1 : 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: const BoxDecoration(
            color: Colors.black,
            // borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
            border: Border(bottom: BorderSide(color: Colors.white, width: 1)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.white,
            //     // offset: Offset(, 4),
            //     // spreadRadius: 10,
            //     blurRadius: 8,
            //   ),
            // ],
          ),
          child: Row(
            spacing: 4,
            children: [
              GFIconButton(
                onPressed: controller.toggle,
                icon: const IconPlus(Ri.menu_fold_line, color: Colors.white),
                type: GFButtonType.transparent,
              ),
              const Balance(),
              const Spacer(),
              GFIconButton(
                size: GFSize.SMALL,
                onPressed: controller.toggle,
                icon: const IconPlus(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: size,
                ),
                type: GFButtonType.transparent,
              ),
              GFIconButton(
                size: GFSize.SMALL,
                onPressed: controller.loadGame,
                icon: const IconPlus(
                  Icons.refresh,
                  color: Colors.white,
                  size: size,
                ),
                type: GFButtonType.transparent,
              ),
              GFIconButton(
                size: GFSize.SMALL,
                onPressed: Get.back,
                icon: const IconPlus(
                  IcomoonFree.exit,
                  color: Colors.white,
                  size: size,
                ),
                type: GFButtonType.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _trigger {
    return AnimatedPositioned(
      top: 0,
      left: controller.showHeader.value ? -100 : 0,
      duration: duration,
      width: 60,
      height: 56,
      child: GFIconButton(
        color: GFColors.DANGER,
        onPressed: controller.toggle,
        icon: const Iconify(Ri.menu_unfold_line, color: Colors.white),
        // type: GFButtonType.transparent,
      ),
    );
  }
}
