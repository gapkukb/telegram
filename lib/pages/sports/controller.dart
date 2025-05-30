part of 'index.dart';

class SportsController extends GetxController {
  SportsController();
  final isExpanded = true.obs;
  final List<String> data = List.generate(10, (index) => index.toString());
  final expansionState = Rx<Map<String, bool>>({});
  // final matches = Rx<List<model.Match>>([]);
  // tap
  void handleTap(int index) {
    Get.snackbar("标题", "消息");
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    expansionState.value = Map.fromIterable(data, value: (element) => true);
    load();
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

  void load() async {
    // final String response = await rootBundle.loadString(
    //   'assets/mock/sports.json',
    // );
    // matches.value =
    //     (List<Map<String, dynamic>>.from(
    //       json.decode(response) as List,
    //     )).map(model.Match.fromJson).toList();
  }
}
