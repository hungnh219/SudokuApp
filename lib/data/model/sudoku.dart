import 'dart:math';

class Sudoku {
  List<List<int>> board;

  Sudoku(this.board);
}

List<List<int>> generateBoard() {
  // int ranNumber = 1 + (0).toInt();
  // int ranNumber = 1 + Random().nextInt(9);
  
  return List.generate(9, (i) => List.generate(9, (j) => 1 + Random().nextInt(9)));
}

List<List<int>> easySudoku = generateBoard();