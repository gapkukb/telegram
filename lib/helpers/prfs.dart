import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;

class GetterSetter<T> {
  final String _key;
  final T _defaultValue;
  late final Rx<T> _rx;

  GetterSetter(this._key, this._defaultValue);

  Rx<T> get() {
    //ignore: dead_null_aware_expression
    _rx ??= Rx<T>(_defaultValue);
    _getter(_key).then((value) {
      _rx.value = value ?? _defaultValue;
    });
    return _rx;
  }

  Future<void> set(T value) {
    // ignore: unnecessary_null_comparison
    if (_rx == null) return Future.value();
    _rx.value = value;
    return _setter(_key, value);
  }

  Future<T?> _getter(String key) {
    if (_defaultValue is String) {
      return prefs.getString(key) as Future<T?>;
    }
    if (_defaultValue is int) {
      return prefs.getInt(key) as Future<T?>;
    }
    if (_defaultValue is double) {
      return prefs.getDouble(key) as Future<T?>;
    }
    if (_defaultValue is bool) {
      return prefs.getBool(key) as Future<T?>;
    }
    if (_defaultValue is List<String>) {
      return prefs.getStringList(key) as Future<T?>;
    }

    return prefs.get(key) as Future<T?>;
  }

  Future<void> _setter(String key, T value) {
    if (value is String) {
      return prefs.setString(key, value as String) as Future<void>;
    }
    if (value is int) {
      return prefs.setInt(key, value as int) as Future<void>;
    }
    if (value is double) {
      return prefs.setDouble(key, value as double) as Future<void>;
    }
    if (value is bool) {
      return prefs.setBool(key, value as bool) as Future<void>;
    }
    if (value is List<String>) {
      return prefs.setStringList(key, value as List<String>) as Future<void>;
    }

    try {
      final js = json.encode(value);
      return prefs.setString(key, js) as Future<void>;
    } catch (e) {
      return Future.value();
    }
  }
}

abstract class ls {
  static Future<void> initlize() async {
    prefs = await SharedPreferences.getInstance();
  }

  static final user = GetterSetter('user', '');

  final value = user.get();
}

void main(List<String> args) async {
  final prefs = await SharedPreferences.getInstance();
}
