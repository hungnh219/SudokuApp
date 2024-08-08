import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';

class CellBloc extends Bloc<CellEvent, CellState> {
  CellBloc() : super(CellState(0, false, [0, 0])) {
    on<ClickCell>((event, emit) {
      if (state.coordinate[0] == event.coordinate[0] && state.coordinate[1] == event.coordinate[1]) {
        print('same');
        emit(CellState(state.value, !state.isClick, state.coordinate));
      } else {
        print('not same');
        emit(CellState(state.value, !state.isClick, state.coordinate));
        emit(CellState(state.value, !state.isClick, event.coordinate));
      }
    });

    on<ChangeValueCell>((event, emit) {
      if (state.isClick) {
        emit(CellState(event.newValue, state.isClick, state.coordinate));
      } else {
        emit(CellState(state.value, state.isClick, state.coordinate));
      }
    });
  }
}

class SudokuBloc extends Bloc<SudokuEvent, SudokuState> {
  SudokuBloc() : super(SudokuInitial()) {
    on<SelectCell>((event, emit) {
      emit(CellSelected(event.row, event.col));
    });

    on<PlaceNumber>((event, emit) {
      List<List<int>> board = List.generate(9, (index) => List.generate(9, (index) => 0));
      emit(NumberPlaced(board));
    });
  }
}
