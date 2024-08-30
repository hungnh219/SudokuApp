import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_event.dart';
import 'package:sudoku/bloc/cell/cell_tapped_state.dart';
import 'package:sudoku/bloc/game/game_bloc.dart';
import 'package:sudoku/bloc/game/game_state.dart';
import 'package:sudoku/utils/my_color.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final cellTappedBloc = context.read<CellTappedBloc>();
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    return Stack(children: [
      // BlocBuilder<CellTappedBloc, CellTappedState>(
      //   builder: (context, cellTappedState) {
      //     return Container(
      //       // constraints: BoxConstraints(maxHeight: double.infinity),
      //       height: widthScreen * 0.9,
      //       width: widthScreen * 0.9,
      //       child: GridView.count(
      //         crossAxisCount: 3,
      //         mainAxisSpacing: 0,
      //         crossAxisSpacing: 0,
      //         children: [
      //           for (int i = 0; i < 3; i++)
      //             for (int j = 0; j < 3; j++)
      //               Container(
      //                 // color: ((i + j) % 2 == 0) ? Color(ColorApp.appPinkWhite) : Color(ColorApp.appPinkLight),
      //                 // child: Center(child: Text('0')),
      //               )
      //         ],
      //       ),
      //     );
      //   }
      // ),

      // Container(
      //   height: widthScreen * 0.9,
      //   width: widthScreen * 0.9,
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.black,
      //       width: 20,
      //     ),
      //   ),
      // ),
      // Container(
      //   // constraints: BoxConstraints(maxHeight: double.infinity),
      //   height: widthScreen * 0.9,
      //   width: widthScreen * 0.9,
      //   child: GridView.count(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 0,
      //     crossAxisSpacing: 0,
      //     children: [
      //       for (int i = 0; i < 3; i++)
      //         for (int j = 0; j < 3; j++)
      //           Container(
      //             decoration: BoxDecoration(
      //               border: Border.all(
      //                 color: Colors.black,
      //                 width: 0.5,
      //               ),
      //             ),
      //             // child: Center(child: Text('0')),
      //           )
      //     ],
      //   ),
      // ),
      
      Container(
        // constraints: BoxConstraints(maxHeight: double.infinity),
        height: widthScreen * 0.9,
        width: widthScreen * 0.9,
        child: GridView.count(
          crossAxisCount: 9,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          children: [
            for (int i = 0; i < 9; i++)
              for (int j = 0; j < 9; j++)
                InkWell(
                  onTap: () {
                    // print('cell tap check $i $j');
                    cellTappedBloc.add(CellTapped(i, j));
                  },
                  child: BlocBuilder<GameBloc, GameState>(
                      builder: (context, gameState) {
                    print('state.board[i][j] ${gameState.board[i][j]}');
                    String value = gameState.board[i][j].toString();

                    return BlocBuilder<CellTappedBloc, CellTappedState>(
                      builder: (context, cellTappedState) {
                        Color whitePink = ((i ~/ 3 + j ~/ 3) % 2 == 0) ? Color(ColorApp.appPinkWhite) : Color(ColorApp.appPinkLight);
                        
                        Border borderTop = Border(top: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderRight = Border(right: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderBottom = Border(bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderLeft = Border(left: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderTopLeft = Border(top: BorderSide(color: Colors.black.withOpacity(0.5), width: 2), left: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderTopRight = Border(top: BorderSide(color: Colors.black.withOpacity(0.5), width: 2), right: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderBottomLeft = Border(bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 2), left: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));
                        Border borderBottomRight = Border(bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 2), right: BorderSide(color: Colors.black.withOpacity(0.5), width: 2));

                        Border customBorder(int i, int j) {
                          if (i == 0) {
                            if (j == 0) {
                              return borderTopLeft;
                            } else if (j == 8) {
                              return borderTopRight;
                            } else {
                              return borderTop;
                            }
                          }

                          if (i == 8) {
                            if (j == 0) {
                              return borderBottomLeft;
                            } else if (j == 8) {
                              return borderBottomRight;
                            } else {
                              return borderBottom;
                            }
                          }

                          if (j == 0) {
                            if (i == 0) {
                              return borderTopLeft;
                            }
                            if (i == 8) {
                              return borderBottomLeft;
                            }

                            return borderLeft;
                          }

                          if (j == 8) {
                            if (i == 0) {
                              return borderTopRight;
                            }
                            if (i == 8) {
                              return borderBottomRight;
                            }

                            return borderRight;
                          }
                          return Border.all(color: Colors.black.withOpacity(0), width: 2);
                        };

                        return Container(
                          // color: cellTappedState.row == i && cellTappedState.col == j ?Colors.red : whitePink,
                          // color: Colors.white,
                          decoration: BoxDecoration(
                            // border: Border.all(
                            //   color: cellTappedState.row == i && cellTappedState.col == j ? Colors.black.withOpacity(1) : Colors.black.withOpacity(0.1),
                            //   width: cellTappedState.row == i && cellTappedState.col == j ? 2 : 0.5,
                            //   // width: 0.1,
                            // ),
                            border: customBorder(i, j),
                            color: cellTappedState.row == i && cellTappedState.col == j ? Color(ColorApp.appPink) : whitePink,
                          ),
                          child: Center(child: Text(value)),
                        );
                      },
                    );
                  }),
                )
          ],
        ),
      ),
      
      // Container(
      //   height: widthScreen * 0.9,
      //   width: widthScreen * 0.9,
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.black,
      //       width: 3,
      //     ),
      //   ),
      // ),
      // Container(
      //   // constraints: BoxConstraints(maxHeight: double.infinity),
      //   height: widthScreen * 0.9,
      //   width: widthScreen * 0.9,
      //   child: GridView.count(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 0,
      //     crossAxisSpacing: 0,
      //     children: [
      //       for (int i = 0; i < 3; i++)
      //         for (int j = 0; j < 3; j++)
      //           Container(
      //             decoration: BoxDecoration(
      //               border: Border.all(
      //                 color: Colors.black,
      //                 width: 0.5,
      //               ),
      //             ),
      //             // child: Center(child: Text('0')),
      //           )
      //     ],
      //   ),
      // ),
    ]);
  }
}
