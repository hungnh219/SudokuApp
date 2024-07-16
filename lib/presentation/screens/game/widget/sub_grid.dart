import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';

class SubGrid extends StatelessWidget {
  SubGrid({super.key, required this.state, required this.coordinate});

  final state;
  List<int> coordinate;

  BoxDecoration clickedBoxStyle = BoxDecoration(
       border: Border.all(
                    color: Colors.redAccent,
                    width: 4,
                  ) 
    );

  BoxDecoration notClickedBoxStyle = BoxDecoration(
     color: Colors.blueGrey
  );

  @override
  Widget build(BuildContext context) {
    final cellBloc = context.read<CellBloc>();
    
    cellTapped() {
      print(coordinate);
      cellBloc.add(ClickCell(coordinate));
    }

    return Material(
            child: InkWell(
              onTap: cellTapped,
              child: Container(
                height: 20,
                width: 10,
                // color: Colors.greenAccent,
                decoration: (state.coordinate[0] == coordinate[0] && state.coordinate[1] == coordinate[1] && state.isClick) ? clickedBoxStyle : notClickedBoxStyle,
                child: Center(child: Text(state.value.toString())),
              ),
            ),
          );
  }
}