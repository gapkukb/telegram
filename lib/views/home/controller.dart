import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:super_plus/views/home/state.dart';

class HomeController extends GetxController {
  HomeController();
  final state = HomeState();
  final timer = StopWatchTimer(mode: StopWatchMode.countDown, presetMillisecond: StopWatchTimer.getMilliSecFromMinute(100));

  _initData() {
    update(["home"]);
  }

  void onTap() {}

  // @override

  @override
  void onReady() {
    super.onReady();
    _initData();
    timer.onStartTimer();
  }

  // @override

  @override
  void dispose() {
    super.dispose();
    timer.dispose();
  }

  void countup() {
    print('countup');
    state.countup.value += 1234;
  }
}
