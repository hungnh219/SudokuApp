import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/game/game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  // CellTappedBloc cellTappedBloc;

  GameBloc() : super(GameState([])) {
    on<UpdatedBoardEvent> (_updateBoard);
    on<GameStartEvent>(_startGame);
  }

  _startGame(GameEvent event, Emitter emit) {
    List<List<int>> board = List.generate(9, (i) => List.generate(9, (j) => -1));

    print(board[5][8].toString());
    print('start game - game bloc');
    emit(GameState(board));
  }
  
  _updateBoard(GameEvent event, Emitter emit) {
    List<List<int>> board = List.generate(9, (i) => List.generate(9, (j) => 0));
    emit(GameState(board));
  }
}