import 'dart:async';
import 'package:flutter/material.dart';

class TickingTimer {
  final _streamController = StreamController<int>();
  Stream<int> get stream => _streamController.stream;
  StreamSubscription<int>? _streamSubscription;

  void start() {
    _streamSubscription = Stream.periodic(const Duration(seconds: 1), (count) => count).listen((event) {
      _streamController.sink.add(event);
    });
  }

  void pause() {
    _streamSubscription?.pause();
    print('pause');
  }

  void resume() {
    _streamSubscription?.cancel();

    start();
    print('resume');
  }

  void cancel() {
    _streamSubscription?.cancel();
    print('pause');
  }
}