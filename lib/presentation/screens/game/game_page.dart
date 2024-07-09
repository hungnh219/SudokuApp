import 'package:flutter/material.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var cellBloc = CellBloc();

  onPressed() {
    cellBloc.setValue(setCellValue(), 5);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: StreamBuilder(
        initialData: CellState.initCell(),
          stream: cellBloc.state,
          builder: (context, snapshot) {
            return InkWell(
              onTap: onPressed,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Text(snapshot.data!.cellValue.toString()),
              ),
            );
          }),
    ));
  }
}
