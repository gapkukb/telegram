import 'package:flutter/cupertino.dart';

class _Generate {
  /// equal to { 4px }
  late final EdgeInsets xxs;

  /// equal to { 8px }
  late final EdgeInsets xs;

  /// equal to { 16px }
  late final EdgeInsets sm;

  /// equal to { 24px }
  late final EdgeInsets md;

  /// equal to { 32px }
  late final EdgeInsets lg;

  /// equal to { 40px }
  late final EdgeInsets xl;

  /// equal to { 48px }
  late final EdgeInsets xxl;

  _Generate(EdgeInsets Function(double gutter) compute) {
    xxs = compute(Gutter.xxs);
    xs = compute(Gutter.xs);
    sm = compute(Gutter.sm);
    md = compute(Gutter.md);
    lg = compute(Gutter.lg);
    xl = compute(Gutter.xl);
    xxl = compute(Gutter.xxl);
  }
}

abstract class Gutter {
  /// equal to { 0 }
  static final zero = EdgeInsets.zero;

  /// equal to { 4px }
  static final xxs = 4.0;

  /// equal to { 8px }
  static final xs = 8.0;

  /// equal to { 16px }
  static final sm = 16.0;

  /// equal to { 24px }
  static final md = 24.0;

  /// equal to { 32px }
  static final lg = 32.0;

  /// equal to { 40px }
  static final xl = 40.0;

  /// equal to { 48px }
  static final xxl = 48.0;

  static final all = _Generate((size) => EdgeInsets.all(size));
  static final horizontal = _Generate(
    (size) => EdgeInsets.symmetric(horizontal: size),
  );
  static final vertical = _Generate(
    (size) => EdgeInsets.symmetric(vertical: size),
  );
  static final left = _Generate((size) => EdgeInsets.only(left: size));
  static final top = _Generate((size) => EdgeInsets.only(top: size));
  static final right = _Generate((size) => EdgeInsets.only(right: size));
  static final bottom = _Generate((size) => EdgeInsets.only(bottom: size));
  static final exceptLeft = _Generate(
    (size) => EdgeInsets.fromLTRB(size, 0, 0, 0),
  );
  static final exceptTop = _Generate(
    (size) => EdgeInsets.fromLTRB(0, size, 0, 0),
  );
  static final exceptRight = _Generate(
    (size) => EdgeInsets.fromLTRB(0, 0, size, 0),
  );
  static final exceptBottom = _Generate(
    (size) => EdgeInsets.fromLTRB(0, 0, 0, size),
  );
}

void main(List<String> args) {}
