import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';
import 'package:sudoku/bloc/cell/cell_state.dart';
import 'package:sudoku/presentation/screens/game/widget/action_button_custom.dart';
import 'package:sudoku/presentation/screens/game/widget/sub_grid.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cellBloc = context.read<CellBloc>();
    // String cellValue = 'huhu';

    

    actionButtonPressed() {
    }

    // cellTapped () {
    //   print('cell tap check');
    //   cellBloc.add(ClickCell());
    // }
    return BlocBuilder<CellBloc, CellState>(builder: (context, state) {
      return Column(
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: double.infinity),
            height: 480,
            
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: 9,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              children: [
                for(int i = 0; i < 9; i++)
                  for (int j = 0; j < 9; j++) 
                    // Container(height:20, width: 10, color: Colors.yellowAccent, child: Center(child: Text('0')),)
                    SubGrid(state: state, coordinate: [i, j])
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    cellBloc.add(ChangeValueCell(1));
                  },
                  child: Text('1')),
              ElevatedButton(
                  onPressed: () {
                    cellBloc.add(ChangeValueCell(2));
                  },
                  child: Text('2')),
              ElevatedButton(onPressed: () {
                cellBloc.add(ChangeValueCell(3));
              }, child: Text('3')),
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.purpleAccent,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                for(int i = 0; i < 9; i++) ActionButtonCustom(index: i)
              ],),),  
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePage())
            );
          }, child: Text("home")),
          BackButton(),

        ],
      );
    });
  }
}
