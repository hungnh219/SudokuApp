import 'package:flutter/material.dart';

class GameInfo extends StatefulWidget {
  const GameInfo({super.key});

  @override
  State<GameInfo> createState() => _GameInfoState();
}

class _GameInfoState extends State<GameInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Colors.pinkAccent.withOpacity(0.5),
      child: Row(children: [],),);
  }
}