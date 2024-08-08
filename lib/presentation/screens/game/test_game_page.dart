import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/board_game.dart';
import 'package:sudoku/presentation/screens/game/widget/game_info.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print('1');
                    },
                    child: Text('1')),
                ElevatedButton(
                    onPressed: () {
                      print('2');
                    },
                    child: Text('2')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}