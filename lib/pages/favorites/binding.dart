part of 'index.dart';

class FavoritesBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<FavoritesController>(
        () => FavoritesController(),
      )
    ];
  }
}
