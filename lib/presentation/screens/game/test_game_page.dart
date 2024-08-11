import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/game/widget/action_button_custom.dart';
import 'package:sudoku/presentation/screens/game/widget/board_game.dart';
import 'package:sudoku/presentation/screens/game/widget/game_info.dart';
import 'package:sudoku/presentation/screens/game/widget/number_button.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';
import 'package:sudoku/presentation/widgets/back_button/BackButton.dart';

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
              // BackButtonCustom(),
              ElevatedButton.icon(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              }, icon: Icon(Icons.arrow_back), label: Text('Back')),
              Text('Test game page'),
              BackButtonCustom()
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