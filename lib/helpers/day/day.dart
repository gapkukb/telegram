part of '../day.dart';

class Day with _DayUtil {
  late final DateTime? _date;
  Day([dynamic value, int? month, int? day, int? hour, int? minute, int? second, int? millisecond, int? microsecond]) {
    if (month != null && value is int) {
      _date = DateTime(value, month, day ?? 1, hour ?? 0, minute ?? 0, second ?? 0, millisecond ?? 0, microsecond ?? 0);
    } else {
      _date = _parse(value ?? DateTime.now());
    }
  }

  clone() {
    return Day(_date.toString());
  }

  @override
  String toString() {
    return _date?.toString() ?? 'Invalid Date';
  }

  format([String? template]) {
    if (_date == null) return 'Invalid Date';
  }

  isToday() {
    return _date == null ? false : _equals(_date);
  }

  isTomorrow() {
    return _date == null ? false : _equals(_date, 1);
  }

  isYesterday() {
    return _date == null ? false : _equals(_date, -1);
  }

  isSame(dynamic that) {
    if (_date == null) return false;
    that = day(that);
    if (that == null) return false;
    return _date.difference(that).inMilliseconds == 0;
  }

  isAfter(dynamic that) {
    return _isAfter(_date, that);
  }

  isBefore(that, units) {
    if (_date == null) return false;
    return !_isAfter(_date, that);
  }

  unix() {
    return _date == null ? 0 : _date.millisecondsSinceEpoch;
  }

  Day add(dynamic value, String units) {
    if (_date == null) return this;
    final v =
        value is String
            ? int.tryParse(value)
            : value is num
            ? value.toInt()
            : null;
    if (v == null) return this;
    final unit = units;

    final object = _date.copyWith(year: unit == Y ? _date.year + v : null, month: unit == M ? _date.month + v : null, day: unit == DATE ? _date.day + v : null, hour: unit == H ? _date.hour + v : null, minute: unit == MIN ? _date.minute + v : null, second: unit == S ? _date.second + v : null, millisecond: unit == MS ? _date.millisecond + v : null);
    return Day(object);
  }
}
