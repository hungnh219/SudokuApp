class CellState {
  int cellValue;

  CellState(this.cellValue);

  int get value => cellValue;

  factory CellState.initCell() {
    return CellState(0);
  }
}
