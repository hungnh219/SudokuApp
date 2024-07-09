import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cellBloc = context.read<CellBloc>();

    BoxDecoration clickedStyle = BoxDecoration(
      color: Colors.lightBlueAccent,
      border: Border.all(
        color: Colors.redAccent,
        width: 4,
      )
    );

    return Scaffold(
      body: BlocBuilder<CellBloc, CellState>(
        builder: (context, state) {
          int value = 0;
          bool isClicked = false;
          
          if (state is CellWithValue) {
            value = state.value;
          } else if (state is CellClicked) {
            isClicked = true;            
          } else {
            value = 0;
            isClicked = false;
          }

          return Column(
            children: [
              InkWell(
                onTap: () {
                  isClicked = !isClicked;
                  cellBloc.add(ChooseCell(isClicked));
                  print((isClicked).toString());
                },
                child: Container(
                  height: 200,
                  width: 200,
                  // color: Colors.lightBlueAccent,
                  decoration: isClicked ? clickedStyle :  BoxDecoration(
                    color: Colors.lightBlueAccent
                  ),
                  child: Center(child: Text('$value')),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      cellBloc.add(ChangeValueCell(1));
                    },
                    child: Text('1')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cellBloc.add(ChangeValueCell(2));
                    },
                    child: Text('2')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      cellBloc.add(ChangeValueCell(3));
                    },
                    child: Text('3')
                  ),
                ],)
            ],
          );
        }
      ),
    );
  }
}