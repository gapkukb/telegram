import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CountDownTimer extends StatefulWidget {
  final dynamic current;
  final dynamic deadline;
  const CountDownTimer({super.key, this.current, this.deadline});

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  late final StopWatchTimer timer;

  @override
  void initState() {
    super.initState();
    timer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      presetMillisecond: StopWatchTimer.getMilliSecFromMinute(widget.current),
    );
    timer.onStartTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: timer.secondTime,
      initialData: 0,
      builder: (context, snap) {
        final value = snap.data!;
        final displayTime =
            StopWatchTimer.getDisplayTime(
              value * 1000,
              milliSecond: false,
            ).characters.toList();
        return Row(
          children: List.generate(displayTime.length, (index) {
            final widget = AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              transitionBuilder: (child, animation) {
                final dir =
                    animation.status == AnimationStatus.dismissed ? -1.0 : 1.0;

                return FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0, 0.7 * dir),
                      end: const Offset(0, 0),
                    ).animate(animation),
                    child: child,
                  ),
                );
              },
              child: Text(
                displayTime[index],
                key: ValueKey(displayTime[index]),
              ),
            );
            return widget;
          }),
        );
      },
    );
  }
}
