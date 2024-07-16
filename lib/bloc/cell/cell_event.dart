abstract class CellEvent {}

class ChangeValueCell extends CellEvent{
  int newValue;

  ChangeValueCell(this.newValue);
}

class ClickCell extends CellEvent{
  List<int> coordinate;
  ClickCell(this.coordinate);
}