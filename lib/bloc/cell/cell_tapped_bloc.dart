import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_event.dart';
import 'package:sudoku/bloc/cell/cell_tapped_state.dart';

class CellTappedBloc extends Bloc<CellTappedEvent, CellTappedState> {
  CellTappedBloc() : super(CellTappedState(0, 0)) {
    on<CellTapped>(_onCellTapped);
  }

  void _onCellTapped(CellTapped event, Emitter<CellTappedState> emit) {
    final currentState = state;

    print('cell tap check ${event.row} ${event.col}');
    if (currentState.col != event.col || currentState.row != event.row) {
      emit(CellTappedState(event.row, event.col));
    } else {
      print('cell tap duplicate -1 -1');
      emit(CellTappedState(-1, -1));
    }
  }
}