class GameTab {
  final String code;
  final String name;

  const GameTab({required this.code, required this.name});
}

class GameTabs {
  static const slot = GameTab(code: "5", name: "slot");
  static const poker = GameTab(code: "3", name: "poker");
  static const casino = GameTab(code: "17", name: "casino");
  static const bingo = GameTab(code: "27", name: "bingo");
  static const arcade = GameTab(code: "8", name: "arcade");

  static const _tabs = [slot, poker, casino, bingo, arcade];

  const GameTabs();

  List<GameTab> get tabs {
    return _tabs;
  }
}
