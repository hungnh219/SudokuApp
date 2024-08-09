import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_event.dart';

class ActionButtonCustom extends StatelessWidget {
  ActionButtonCustom({super.key, required this.icon, required this.iconText});

  IconData icon;
  String iconText;
  @override
  Widget build(BuildContext context) {
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    return InkWell(
      onTap: () {
        print('action button pressed');
      },
      child: Container(
        // height: widthScreen * 0.2,
        width: widthScreen * 0.1,
        child: Column(children: [
          Icon(icon, size: 40,),
          Text(iconText)
        ],),),
    );
  }
}

class ActionButtonList extends StatelessWidget {
  const ActionButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionButtonCustom(icon: Icons.undo, iconText: 'undo'),
          ActionButtonCustom(icon: Icons.redo, iconText: 'redo'),
          ActionButtonCustom(icon: Icons.delete, iconText: 'delete'),
          ActionButtonCustom(icon: Icons.lightbulb, iconText: 'hint'),
        ],
      ),
    );
  }
}