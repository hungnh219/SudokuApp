import 'package:flutter/material.dart';
import 'package:sudoku/bloc/game/game_event.dart';

class NumberButton extends StatelessWidget {
  NumberButton({super.key, required this.num});

  int num;
  @override
  Widget build(BuildContext context) {
    String numString = num.toString();

    int widthScreen = MediaQuery.of(context).size.width.toInt();
    return GestureDetector(
      onTap: () {
        print(num.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blue,
          // borderRadius: BorderRadius.circular(24),
        ),
        // alignment: Alignment.center,
        height: widthScreen * 0.15,
        width: widthScreen * 0.1,
        child: Center(child: Text(numString, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

class NumberButtonList extends StatelessWidget {
  const NumberButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 1; i < 10; i++) NumberButton(num: i),
        ],
      ),
    );
  }
}