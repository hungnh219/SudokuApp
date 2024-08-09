import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/action_button_custom.dart';
import 'package:sudoku/presentation/screens/game/widget/board_game.dart';
import 'package:sudoku/presentation/screens/game/widget/game_info.dart';
import 'package:sudoku/presentation/screens/game/widget/number_button.dart';

class TestGamePage extends StatelessWidget {
  const TestGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              BackButton(),
              Text('Test game page'),
              BackButton(),
            ],),
            GameInfo(),
            GameBoard(),
            ActionButtonList(),
            NumberButtonList()
          ],
        ),
      ),
    );
  }
}