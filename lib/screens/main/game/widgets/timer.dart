import 'package:flutter/material.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  late int minutes;
  late int seconds;
  Stream<int> timer() async* {
    int count = 0;
    while(true) {
      await Future.delayed(Duration(seconds: 1));
      count++;
      yield count;
    }
  }

  @override
  void initState() {
    minutes = 0;
    seconds = 0;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: timer(), builder: (context, snapshot) {
      if (snapshot.hasData) {
        return Text(snapshot.data.toString());
      } else
        return Text('hehe');
    });
  }
}
