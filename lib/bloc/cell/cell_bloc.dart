import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';

class CellBloc extends Bloc<CellEvent, CellState>{
  CellBloc() : super(InitCellState(0)) {
    on<ChangeValueCell>((event, emit) => emit(CellWithValue(event.newValue)));
    on<ChooseCell>((event, emit) => emit(CellClicked(event.isClick)));
  }

}

// class CellBloc {
//   final initState = CellState.initCell();
//   var cellState = CellState(5);

//   final eventController = StreamController<CellEvent>();
//   final stateController = StreamController<CellState>();

//   Stream<CellState> get state => stateController.stream;

//   void setValue(CellEvent event, int newValue) {
//     if (event is setCellValue) {
//       // cellState = CellState(newValue++);
//       stateController.sink.add(CellState(newValue++));

//       print('object');
//     } else if (event is chooseCell) {
//       cellState = CellState(cellState.cellValue);
//     } else {
//       cellState = CellState.initCell();
//     }

//     // stateController.sink.add(cellState);
//   }

//   void dispose() {}
// }
