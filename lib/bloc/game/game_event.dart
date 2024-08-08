abstract class GameEvent {}

class GameStartEvent extends GameEvent {}

class GameRestartEvent extends GameEvent {}

class GamePauseEvent extends GameEvent {}

class GameResumeEvent extends GameEvent {}

class GameEndEvent extends GameEvent {}

class GameUndoEvent extends GameEvent {}

class GameRedoEvent extends GameEvent {}

class GameSaveEvent extends GameEvent {}

class GameLoadEvent extends GameEvent {}

class CellTapEvent extends GameEvent {
  final int row;
  final int col;

  CellTapEvent(this.row, this.col);
}

class UpdatedBoardEvent extends GameEvent {
  final List<List<int>> board;

  UpdatedBoardEvent(this.board);
}