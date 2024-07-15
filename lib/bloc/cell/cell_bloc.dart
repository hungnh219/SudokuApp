import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';

class CellBloc extends Bloc<CellEvent, CellState> {
  CellBloc() : super(CellState(0, false)) {
    on<ClickCell>((event, emit) {
      emit(CellState(state.value, !state.isClick));
    });

    on<ChangeValueCell>((event, emit) {
      if (state.isClick) {
        emit(CellState(event.newValue, state.isClick));
      } else {
        emit(CellState(state.value, state.isClick));
      }
    });
  }
}