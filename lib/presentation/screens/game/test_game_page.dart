import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/game_info.dart';

class TestGamePage extends StatelessWidget {
  const TestGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    int widthScreen = MediaQuery.of(context).size.width.toInt();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              BackButton(),
              Text('Sudoku'),
              BackButton(),
            ],),
            GameInfo(),
            Container(
              constraints: BoxConstraints(maxHeight: double.infinity),
              height: widthScreen * 0.9,
              width: widthScreen * 0.9,
              child: GridView.count(
                crossAxisCount: 9,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                children: [
                  for(int i = 0; i < 9; i++)
                    for (int j = 0; j < 9; j++) 
                      Container(height:20, width: 10, color: Colors.yellowAccent, child: Center(child: Text('0')),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print('1');
                    },
                    child: Text('1')),
                ElevatedButton(
                    onPressed: () {
                      print('2');
                    },
                    child: Text('2')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}