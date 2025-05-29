part of 'index.dart';

class SearchController extends GetxController {
  SearchController();
  final _words = [
    "JavaScript is a lightweight",
    "cross-platform",
    "interpreted scripting language",
    "It is well-known",
    "for the development of web pages",
    "many non-browser environments also",
    "use it",
    "JavaScript can be used for",
    "Client-side developments",
    "as well as Server-side developments.",
  ];
  final search = TextEditingController();
  final keyword = "".obs;

  List<RichText> get filterdWords {
    final v = keyword.value.trim();
    if (v.isEmpty) return [];

    final y = v.toLowerCase();
    final List<RichText> list = [];
    int index = -1;

    for (var word in _words) {
      index = word.toLowerCase().indexOf(y);
      if (index == -1) continue;
      list.add(_creator(word, index, y.length));
    }

    return list;
  }

  // tap
  void handleTap() {
    Get.snackbar("标题", "消息");
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    search.addListener(() => keyword.value = search.text);
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
    search.dispose();
  }

  RichText _creator(String word, int index, int length) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 12),
        children: [
          TextSpan(text: word.substring(0, index)),
          TextSpan(
            text: word.substring(index, index + length),
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(text: word.substring(index + length)),
        ],
      ),
    );
  }
}
