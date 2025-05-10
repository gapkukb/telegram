part of '../day.dart';

class Day with _DayUtil {
  late final DateTime _date;
  Day([dynamic value, int? month, int? day, int? hour, int? minute, int? second, int? millisecond, int? microsecond]) {
    if (month != null && value is int) {
      _date = DateTime(value, month, day ?? 1, hour ?? 0, minute ?? 0, second ?? 0, millisecond ?? 0, microsecond ?? 0);
    } else {
      final date = _parse(value ?? DateTime.now());
      if (date == null) {
        throw _DayUtil.INVALID_DATE_STRING;
      }
      _date = date;
    }
  }

  clone() {
    return Day(_date.copyWith());
  }

  @override
  String toString() {
    return _date.toString();
  }

  isToday() {
    return _equals(_date);
  }

  isTomorrow() {
    return _equals(_date, 1);
  }

  isYesterday() {
    return _equals(_date, -1);
  }

  isSame(dynamic that) {
    if (that == null) return false;
    that = day(that);
    if (that == null) return false;
    return _date.difference(that).inMilliseconds == 0;
  }

  isAfter(dynamic that) {
    return _isAfter(_date, that);
  }

  isBefore(that, units) {
    return !_isAfter(_date, that);
  }

  unix() {
    return _date.millisecondsSinceEpoch;
  }

  Day add(final int value, final String unit) {
    if (value == 0) return clone();
    final object = _date.copyWith(year: unit == _DayUtil.Y ? _date.year + value : null, month: unit == _DayUtil.M ? _date.month + value : null, day: unit == _DayUtil.DATE ? _date.day + value : null, hour: unit == _DayUtil.H ? _date.hour + value : null, minute: unit == _DayUtil.MIN ? _date.minute + value : null, second: unit == _DayUtil.S ? _date.second + value : null, millisecond: unit == _DayUtil.MS ? _date.millisecond + value : null);
    return Day(object);
  }

  Day subtract(int value, String unit) {
    return add(value * -1, unit);
  }

  format([String? template]) {
    if (template == null) return _DayUtil.DEFAULT.format(_date);
    return DateFormat(template).format(_date);
  }

  String get YYYYMMDD => _DayUtil.YYYYMMDD.format(_date);
  String get YYYYMD => _DayUtil.YYYYMD.format(_date);

  String get YYYYMM => _DayUtil.YYYYMM.format(_date);
  String get YYYYM => _DayUtil.YYYYM.format(_date);

  String get MMDD => _DayUtil.MMDD.format(_date);
  String get MD => _DayUtil.MD.format(_date);

  String get HHMMSS => _DayUtil.HHMMSS.format(_date);
  String get HMS => _DayUtil.HMS.format(_date);
}
