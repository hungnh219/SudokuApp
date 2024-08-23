import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/puzzel/puzzle_event.dart';
import 'package:sudoku/bloc/puzzel/puzzle_state.dart';

// store the state of the puzzle: current board, the previous board (to undo and redo)
class PuzzleBloc extends Bloc<PuzzleEvent, PuzzleState> {
  PuzzleBloc(super.initialState);
}