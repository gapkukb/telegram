import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

class User {
  final String name;
  final String jobTitle;
  final String email;
  final String createdAt;
  final String? avatar;

  User({
    required this.name,
    required this.jobTitle,
    required this.email,
    required this.createdAt,
    this.avatar,
  });
}

class HomeState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
  final fakeUsers = List.filled(
    10 * 3,
    User(
      name: BoneMock.name,
      jobTitle: BoneMock.words(2),
      email: BoneMock.email,
      createdAt: BoneMock.date,
    ),
  );
}
