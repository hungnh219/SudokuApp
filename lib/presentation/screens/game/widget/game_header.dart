import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/pause_play_button.dart';
import 'package:sudoku/presentation/screens/game/widget/time_counter.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Colors.pinkAccent.withOpacity(0.5),
      child: Row(children: [
        BackButton(),
        TimeCounter(),
        PausePlayButton(),
      ],));
  }
}