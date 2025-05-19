class GameTab {
  final String code;
  final String name;

  const GameTab({required this.code, required this.name});
}

class GamegTabs {
  static const slot = GameTab(code: "3", name: "slot");
  static const poker = GameTab(code: "3", name: "poker");
  static const casino = GameTab(code: "3", name: "casino");
  static const bingo = GameTab(code: "3", name: "bingo");
  static const arcade = GameTab(code: "3", name: "arcade");

  static const _tabs = [slot, poker, casino, bingo, arcade];

  const GamegTabs();

  List<GameTab> get tabs {
    return _tabs;
  }
}
