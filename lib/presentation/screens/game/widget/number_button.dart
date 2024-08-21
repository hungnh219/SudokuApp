import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_state.dart';
import 'package:sudoku/bloc/game/game_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/game/game_state.dart';

class NumberButton extends StatelessWidget {
  NumberButton({super.key, required this.num});

  int num;
  @override
  Widget build(BuildContext context) {
    String numString = num.toString();
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    final gameBloc = context.read<GameBloc>();
    final cellTappedBloc = context.read<CellTappedBloc>();

    void _onTap() {

      List<int> coordinates = [cellTappedBloc.state.row, cellTappedBloc.state.col];
      print(num.toString());
      print(coordinates);
      if (coordinates[0] != -1 && coordinates[1] != -1) {
        gameBloc.add(UpdateBoardEvent(num, coordinates));
      }
    }

    return GestureDetector(
      onTap: _onTap,
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blue,
          // borderRadius: BorderRadius.circular(24),
        ),
        // alignment: Alignment.center,
        height: widthScreen * 0.15,
        width: widthScreen * 0.1,
        child: Center(child: Text(numString, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

class NumberButtonList extends StatelessWidget {
  const NumberButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 1; i < 10; i++) NumberButton(num: i),
        ],
      ),
    );
  }
}