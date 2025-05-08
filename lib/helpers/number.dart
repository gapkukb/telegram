import 'package:intl/intl.dart';

// 固定两位小数
final _f1 = NumberFormat("#,###.00", "en_PH");
// 最多两位小数
final _f2 = NumberFormat("#,###.##", "en_PH");
// 没有小数
final _f3 = NumberFormat("#,###", "en_PH");

num _parse([final dynamic value = 0]) {
  if (value is num) return value;
  if (value is String) return num.tryParse(value) ?? 0;
  return 0;
}

String amountize([dynamic value = 0, final int decimal = 2, final bool fixedLength = true]) {
  value = _parse(value);

  if (decimal == 0) return _f3.format(value);
  if (fixedLength) return _f1.format(value);
  return _f2.format(value);
}

final _c1 = NumberFormat.simpleCurrency(locale: "en_PH", name: '₱');

String currencize([dynamic value = 0, final int decimal = 2, final bool fixedLength = true, int gap = 0]) {
  value = _parse(value);

  return _c1.format(value).replaceAll('₱', '₱${' ' * gap}');
}
