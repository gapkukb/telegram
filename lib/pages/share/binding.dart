part of 'index.dart';

class ShareBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<ShareController>(
        () => ShareController(),
      )
    ];
  }
}
