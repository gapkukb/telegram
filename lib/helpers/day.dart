import 'dart:math';

import 'package:intl/intl.dart';

// part 'day/day.constant.dart';
part 'day/day.util.dart';
part 'day/day.dart';

Day day([dynamic value, String? template]) {
  if (value is Day) return value.clone();
  return Day(value);
}

main() {}
