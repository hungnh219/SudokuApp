class CellState{
  int value;
  bool isClick;
  List<int> coordinate;

  CellState(this.value, this.isClick, this.coordinate);
}


abstract class SudokuState {}

class SudokuInitial extends SudokuState {}

class CellSelected extends SudokuState {
  final int row;
  final int col;
  CellSelected(this.row, this.col);
}

// get number and change the board, then update the board
class NumberPlaced extends SudokuState {
  final List<List<int>> board;
  NumberPlaced(this.board);
}