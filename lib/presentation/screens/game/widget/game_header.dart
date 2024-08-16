import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/pause_play_button.dart';
import 'package:sudoku/presentation/screens/game/widget/time_counter.dart';
import 'package:sudoku/presentation/widgets/back_button/BackButton.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: double.infinity,
        color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonCustom(),
            TimeCounter(),
            BackButtonCustom(),
          ],
        ));
  }
}
