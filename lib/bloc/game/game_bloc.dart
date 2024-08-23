import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/game/game_event.dart';
import 'package:sudoku/bloc/game/game_state.dart';
import 'package:sudoku/data/model/sudoku.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  // CellTappedBloc cellTappedBloc;

  GameBloc() : super(GameState([])) {
    on<UpdateBoardEvent> (_updateBoard);
    on<GameStartEvent>(_startGame);
  }

  _startGame(GameEvent event, Emitter emit) {
    // List<List<int>> board = List.generate(9, (i) => List.generate(9, (j) => 0));
    List<List<int>> board = easySudoku;
    // print(board[5][8].toString());
    // print('start game - game bloc');
    emit(GameState(board));
  }
  
  _updateBoard(UpdateBoardEvent event, Emitter emit) {
    // print('update board - game bloc');

    int row = event.coordinates[0];
    int col = event.coordinates[1];

    List<List<int>> board = state.board;
    board[row][col] = event.value;

    // List<List<int>> board = List.generate(9, (i) => List.generate(9, (j) => 0));
    emit(GameState(board));
  }
}