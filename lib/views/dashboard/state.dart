import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:nil/nil.dart";

class DashboardState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  final a = BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse', backgroundColor: Colors.transparent);
  final b = BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse', backgroundColor: Colors.transparent);
  final c = BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse', backgroundColor: Colors.transparent);
  final d = BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse', backgroundColor: Colors.transparent);
}
