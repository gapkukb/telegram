import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:telegram/gen/assets.gen.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final timer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromSecond(30),
  );

  @override
  void initState() {
    super.initState();
    timer.onStartTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32.0.w),
          child: Column(
            children: [
              Assets.images.mail.image(width: 400.0.w),
              Text("We have sent an email to"),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "sarah.jansen@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: " with instructions "),
                  ],
                ),
              ),
              Text("to reset your password."),

              SizedBox(height: 48.0.w),
              StreamBuilder<int>(
                stream: timer.rawTime,
                initialData: timer.rawTime.value,
                builder: (context, snapshot) {
                  final value = snapshot.data!;
                  final displayTime = StopWatchTimer.getDisplayTime(value);
                  return TextButton(
                    onPressed: null,
                    child: Text('RESEND $displayTime'),
                  );
                },
              ),

              SizedBox(height: 48.0.w),

              Center(
                child: Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 96.0.w,
                    height: 96.0.w,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                ),
              ),
              SizedBox(height: 128.0.w),
              SizedBox(
                width: double.infinity,
                height: 96.0.w,
                child: FilledButton(onPressed: () {}, child: Text("Next")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
