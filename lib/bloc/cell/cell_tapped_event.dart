abstract class CellTappedEvent {}

class CellTapped extends CellTappedEvent {
  final int row;
  final int col;

  CellTapped(this.row, this.col);
}