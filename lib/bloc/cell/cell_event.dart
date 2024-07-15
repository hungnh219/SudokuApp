abstract class CellEvent {}

class ChangeValueCell extends CellEvent{
  int newValue;

  ChangeValueCell(this.newValue);
}

class ClickCell extends CellEvent{
  ClickCell();
}