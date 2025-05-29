part of 'index.dart';

class SearchBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<SearchController>(
        () => SearchController(),
      )
    ];
  }
}
