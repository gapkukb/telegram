part of 'index.dart';

class SportsBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<SportsController>(
        () => SportsController(),
      )
    ];
  }
}
