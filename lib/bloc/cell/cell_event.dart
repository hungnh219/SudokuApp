// enum events = setValue;
// enum CellEvent { setValue }

abstract class CellEvent {}

class ChangeValueCell extends CellEvent {
  int newValue;

  ChangeValueCell(this.newValue);
}

class ChooseCell extends CellEvent {
  bool isClick;

  ChooseCell(this.isClick);
}