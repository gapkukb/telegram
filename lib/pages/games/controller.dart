part of 'index.dart';

class GamesController extends GetxController with GetTickerProviderStateMixin {
  late final TabController ctrl;
  final gameTabs = const GameTabs();
  final scrollable = false.obs;
  final tabIndex = 0.obs;

  // tap
  void handleTap(int index) {
    Get.snackbar("标题", "消息");
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    ctrl = TabController(length: gameTabs.tabs.length, vsync: this);
    ctrl.addListener(onchange);
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }

  onchange() {
    tabIndex.value = ctrl.index;
  }
}
