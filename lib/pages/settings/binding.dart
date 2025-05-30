part of 'index.dart';

class SettingsBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<SettingsController>(
        () => SettingsController(),
      )
    ];
  }
}
