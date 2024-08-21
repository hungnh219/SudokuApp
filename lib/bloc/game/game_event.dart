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

class UpdateBoardEvent extends GameEvent {
  int value;
  List<int> coordinates;
  
  UpdateBoardEvent(this.value, this.coordinates);
}