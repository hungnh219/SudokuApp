import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sudoku/screens/main/game/widgets/game_board.dart';
import 'package:sudoku/screens/main/game/widgets/timer.dart';

class GameScreen extends StatefulWidget {
  GameScreen({super.key, required this.puzzle});

  static const String path = 'GameScreen';

  List<List<int>>? puzzle;
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            gameHeader(),
            SizedBox(height: 20),
            gameStats(),
            SizedBox(height: 20),
            gameStats(),
            GameBoard(boardWidth: screenWidth * 0.9),
            gameStats(),

          ],
        ),
      ),
    );
  }

  Widget gameHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back)),
        Timer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      ],
    );
  }

  Widget gameStats() {
    return Row(
      children: [
        Text('hehe'),
        Text('hehe'),
      ],
    );
  }
}
