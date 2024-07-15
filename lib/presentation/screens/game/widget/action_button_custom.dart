import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';

class ActionButtonCustom extends StatelessWidget {
  const ActionButtonCustom({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final blocCell = context.read<CellBloc>();
    
    int cellValue = index + 1;
    onTappedButton() {
      blocCell.add(ChangeValueCell(cellValue));
    }

    return Material(
      child: InkWell(
        onTap: onTappedButton,
        child: Container(
            height: 40,
            width: 40,
            color: Colors.redAccent,
            child: Text(cellValue.toString()),
        ),
      ),
    );
  }
}