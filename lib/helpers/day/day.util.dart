part of '../day.dart';

const SECONDS_A_MINUTE = 60;
const SECONDS_A_HOUR = SECONDS_A_MINUTE * 60;
const SECONDS_A_DAY = SECONDS_A_HOUR * 24;
const SECONDS_A_WEEK = SECONDS_A_DAY * 7;

const MILLISECONDS_A_SECOND = 1e3;
const MILLISECONDS_A_MINUTE = SECONDS_A_MINUTE * MILLISECONDS_A_SECOND;
const MILLISECONDS_A_HOUR = SECONDS_A_HOUR * MILLISECONDS_A_SECOND;
const MILLISECONDS_A_DAY = SECONDS_A_DAY * MILLISECONDS_A_SECOND;
const MILLISECONDS_A_WEEK = SECONDS_A_WEEK * MILLISECONDS_A_SECOND;

// English locales
const MS = 'millisecond';
const S = 'second';
const MIN = 'minute';
const H = 'hour';
const D = 'day';
const W = 'week';
const M = 'month';
const Q = 'quarter';
const Y = 'year';
const DATE = 'date';

const FORMAT_DEFAULT = 'YYYY-MM-DDTHH:mm:ssZ';

const INVALID_DATE_STRING = 'Invalid Date';

// regex
final REGEXP_SPLITER = RegExp(r'[\W+]\s*');
final REGEX_TIME_ZONE = RegExp(r"Z$", caseSensitive: true);
final REGEX_PARSE = RegExp(r"^(\d{4})\W?(\d{1,2})?\W?(\d{0,2})[Tt\s]*(\d{1,2})?\W?(\d{1,2})?\W?(\d{1,2})?\W?(\d+)?.*$");
final REGEX_FORMAT = RegExp(r"\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g");
// Thu, 13 Apr 2023 15:30:00 +0000
final F1 = DateFormat("EEE dd MMM y hh mm ss 'GMT'Z");
// April 13, 2023, 3:30 PM
final F2 = DateFormat("MMM dd y h m a");
//Mon Feb 11 2019 11:01:37 GMT+0100
final F3 = DateFormat("EEE MMM dd y hh mm ss 'GMT'Z");

mixin _DayUtil {
  int _diff(final DateTime date, [DateTime? now]) {
    now ??= DateTime.now();

    return date.difference(now).inDays;
  }

  bool _equals(final DateTime date, [final int disDay = 0]) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month && date.day == now.day + disDay;
  }

  bool _isAfter(final DateTime? date, dynamic that) {
    if (date == null) return false;
    that = day(that);
    if (that == null) return false;
    return date.microsecondsSinceEpoch > that.microsecondsSinceEpoch;
  }

  int? _toInt(String? s) {
    if (s == null) return null;
    return int.tryParse(s);
  }

  DateTime? _parse(dynamic value) {
    if (value is DateTime) return value;
    if (value is num) return _parseFormNumber(value);
    if (value is String) return _parseFromString(value);
    return DateTime.tryParse(value);
  }

  DateTime _parseFormNumber(final num value) => DateTime.fromMillisecondsSinceEpoch(value.toInt());

  DateTime? _parseFromString(String value) {
    if (value.isEmpty) return DateTime.now();
    if (REGEX_TIME_ZONE.hasMatch(value)) {
      final date = DateTime.tryParse(value);
      if (date != null) return date;
    }
    return _fromRegExpNormal(value) ?? _fromRegExpTemplate(value);
  }

  DateTime? _fromRegExpNormal(String value) {
    final matched = REGEX_PARSE.firstMatch(value);
    if (matched == null) return null;
    final d = matched.groups([1, 2, 3, 4, 5, 6, 7]).map(_toInt).toList();
    final ms = min((d[6] ?? 0), 999);
    return DateTime(d[0]!, d[1] ?? 1, d[2] ?? 1, d[3] ?? 0, d[4] ?? 0, d[5] ?? 0, ms);
  }

  DateTime? _fromRegExpTemplate(String value) {
    final group = value.split(REGEXP_SPLITER).sublist(0, 9);
    final template = group.join(' ');
    return DateTime.tryParse(template) ?? F1.tryParse(template) ?? F2.tryParse(template) ?? F3.tryParse(template);
  }

  String prettyUnit(String u) {
    const special = {"M": M, "y": Y, "w": W, "d": D, "D": DATE, "h": H, "m": MIN, "s": S, "ms": MS, "Q": Q};
    return special[u] ?? u.toLowerCase().trim();
  }
}
