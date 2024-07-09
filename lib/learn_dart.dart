import 'dart:async';

class Logic {
  StreamController controller;
  Sink get sink => controller.sink;
  Stream get stream => controller.stream;

  Logic(this.controller);

  void addValue(String str) {
    sink.add(str);
  }

  void printValue() {
    stream.listen((value) {
      print(value);
    });
  }
}

main() {
  StreamController controller = StreamController();
  Logic logic = Logic(controller);

  logic.addValue('hung dep trai');
  logic.printValue();
  logic.addValue('hung dep trai vcl may con ga biet gi?');
  logic.printValue();

  controller.close();
}
