import 'package:flutter/material.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_event.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final CellTappedBloc cellTappedBloc = CellTappedBloc();
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    return Stack(
      children: [
        Container(
        // constraints: BoxConstraints(maxHeight: double.infinity),
        height: widthScreen * 0.9,
        width: widthScreen * 0.9,
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: [
            for (int i = 0; i < 3; i++)
              for (int j = 0; j < 3; j++)
                Container(
                  color: ((i + j) % 2 == 0)
                      ? Colors.yellowAccent
                      : Colors.pinkAccent,
                  // child: Center(child: Text('0')),
                )
          ],
        ),
      ),
        Container(
        // constraints: BoxConstraints(maxHeight: double.infinity),
        height: widthScreen * 0.9,
        width: widthScreen * 0.9,
        child: GridView.count(
          crossAxisCount: 9,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: [
            for (int i = 0; i < 9; i++)
              for (int j = 0; j < 9; j++)
                InkWell(
                  onTap: () {
                    // print('cell tap check $i $j');
                    cellTappedBloc.add(CellTapped(i, j));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                    child: Center(child: Text('0')),
                  ),
                )
          ],
        ),
      ),
      ]
    );
  }
}
