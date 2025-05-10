import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GamesState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
  final scrollable = Rxn(false);
}
