abstract class CellEvent {}

class ChangeValueCell extends CellEvent{
  int newValue;
  ChangeValueCell(this.newValue);
}

class ClickCell extends CellEvent{
  List<int> coordinate;
  ClickCell(this.coordinate);
}

abstract class SudokuEvent {}

class SelectCell extends SudokuEvent {
  final int row;
  final int col;
  SelectCell(this.row, this.col);
}

class PlaceNumber extends SudokuEvent {
  final int number;
  PlaceNumber(this.number);
}