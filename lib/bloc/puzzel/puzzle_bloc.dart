import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/puzzel/puzzle_event.dart';
import 'package:sudoku/bloc/puzzel/puzzle_state.dart';

class PuzzleBloc extends Bloc<PuzzleEvent, PuzzleState> {
  PuzzleBloc(super.initialState);
}