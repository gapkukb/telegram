part of 'index.dart';

class LoginBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<LoginController>(
        () => LoginController(),
      )
    ];
  }
}
