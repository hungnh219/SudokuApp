import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/game/widget/action_button_custom.dart';
import 'package:sudoku/presentation/screens/game/widget/game_board.dart';
import 'package:sudoku/presentation/screens/game/widget/game_header.dart';
import 'package:sudoku/presentation/screens/game/widget/game_info.dart';
import 'package:sudoku/presentation/screens/game/widget/number_button.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';
import 'package:sudoku/presentation/widgets/back_button/BackButton.dart';

class TestGamePage extends StatelessWidget {
  const TestGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    int widthScreen = MediaQuery.of(context).size.width.toInt();
    // final cellBloc = context.read<CellTappedBloc>();

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
              Text('00:00'),
              BackButtonCustom()
            ],),
            GameHeader(),
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