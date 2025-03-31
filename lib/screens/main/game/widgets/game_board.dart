import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class GameBoard extends StatefulWidget {
  GameBoard({super.key, required this.boardWidth});

  double boardWidth;

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  ValueNotifier<int?> tappedIndex = ValueNotifier<int?>(null);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.boardWidth,
      width: widget.boardWidth,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2
        )
      ),
      child: ValueListenableBuilder(
        builder: (context, value, child) {
          return GridView.builder(
              itemCount: 81,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    cellTapped(index);
                  },
                  child: Container(
                    height: widget.boardWidth / 9,
                    width: widget.boardWidth / 9,
                    decoration: BoxDecoration(
                        color: index == tappedIndex.value ? AppColors.blue : index % 2 == 0 ? AppColors.white : AppColors.pink,
                        border: Border.all(
                            width: 0.5,
                            color: AppColors.black.withOpacity(0.5)
                        )
                    ),
                    child: Center(child: const Text('0')),
                  ),
                );
              }
          );
        },
        valueListenable: tappedIndex,
      ),
    );
  }

  void cellTapped(int index) {
    if (tappedIndex.value == index) {
      tappedIndex.value = null;
    } else {
      tappedIndex.value = index;
    }
    print(tappedIndex.value);
  }
}
