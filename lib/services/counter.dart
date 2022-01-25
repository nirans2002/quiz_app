import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/components/timer_element.dart';

class StopWatchTimerPage extends StatefulWidget {
  @override
  _StopWatchTimerPageState createState() => _StopWatchTimerPageState();
}

class _StopWatchTimerPageState extends State<StopWatchTimerPage> {
  static const countdownDuration =
      Duration(minutes: 0, seconds: 5, milliseconds: 1);
  Duration duration = Duration();
  Timer? timer;
  bool countDown = true;

  @override
  void initState() {
    super.initState();
    reset();
    startTimer();
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = countDown ? -1 : 1;
    final addMilliSeconds = countDown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      final milliseconds = duration.inMilliseconds + addMilliSeconds;
      final minutes = duration.inMinutes;
      if (minutes == 0 && seconds == 0 && milliseconds == 0) {}
      if (milliseconds < 0) {
        // debugPrint("ended 1");
        //
        timer?.cancel();
      } else {
        duration = Duration(milliseconds: milliseconds);
      }
    });
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Flutter StopWatch Timer Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTime(),
              SizedBox(
                height: 80,
              ),
              // buildButtons()
            ],
          ),
        ),
      );

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String threeDigits(int n) => n.toString().padLeft(3, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final millisec = threeDigits(duration.inMilliseconds.remainder(100));

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(
        time: minutes,
      ),
      buildTimeCard(
        time: seconds,
      ),
      buildTimeCard(
        time: millisec,
      ),
    ]);
  }
}
