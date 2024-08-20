import 'package:flutter/material.dart';

class GameInfoCustom extends StatelessWidget {
  GameInfoCustom({super.key, required this.title, required this.value});

  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(title),
      Text(value),
    ],);
  }
}

class GameInfo extends StatelessWidget {
  const GameInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      // height: 80,
      width: double.infinity,
      color: Colors.pinkAccent.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        GameInfoCustom(title: 'Difficulty', value: 'Easy'),
        GameInfoCustom(title: 'Mistakes', value: '0/3'),
        GameInfoCustom(title: 'Score', value: '18522'),
      ],),);
  }
}