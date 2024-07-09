abstract class CellState{}

class InitCellState extends CellState {
  int value;

  InitCellState(this.value);
}

class CellWithValue extends CellState {
  int value;
  CellWithValue(this.value);
}

class CellClicked extends CellState {
  bool isClick;
  CellClicked(this.isClick);
}

// class CellState {
//   int cellValue;
//   bool isClick;
  
//   CellState(this.cellValue, this.isClick);

//   int get value => cellValue;

//   factory CellState.initCell() {
//     return CellState(0, false);
//   }
// }
