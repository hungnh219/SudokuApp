import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  late int minutes;
  late int seconds;

  @override
  void initState() {
    minutes = 0;
    seconds = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Text('$minutes : $seconds');
  }
}
