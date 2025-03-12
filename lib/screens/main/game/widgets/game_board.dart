import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  GameBoard({super.key, required this.boardWidth});

  double boardWidth;

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.red,
    //   width: widget.boardWidth,
    //   height: widget.boardWidth,
    // );
    return Container(
      height: widget.boardWidth,
      width: widget.boardWidth,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2
        )
      ),
      child: GridView.builder(
        itemCount: 81,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
        itemBuilder: (context, index) {
          return Container(
            height: widget.boardWidth / 9,
            width: widget.boardWidth / 9,
            color: index % 2 == 0 ? Colors.white60 : Colors.pink,
          );
        }
      ),
    );
  }
}
