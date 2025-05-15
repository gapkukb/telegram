part of 'index.dart';

class MeBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<MeController>(
        () => MeController(),
      )
    ];
  }
}
