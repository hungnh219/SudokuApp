import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/game/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  // CellTappedBloc cellTappedBloc;

  GameBloc() : super(GameState([])) {
    on<UpdatedBoardEvent> ((event, emit) => updateBoard(emit, event.board));
  }

  updateBoard(Emitter emit , List<List<int>> board) {
    emit(GameState(board));
  }
}