part of 'index.dart';

class GamesBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<GamesController>(
        () => GamesController(),
      )
    ];
  }
}
