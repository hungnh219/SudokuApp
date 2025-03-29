import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sudoku/models/Timer.dart';
import 'package:sudoku/screens/main/game/widgets/action_game_buttons.dart';
import 'package:sudoku/screens/main/game/widgets/game_board.dart';
import 'package:sudoku/screens/main/game/widgets/game_stats.dart';
import 'package:sudoku/screens/main/game/widgets/number_pad.dart';
import 'package:sudoku/screens/main/game/widgets/timer.dart';

class GameScreen extends StatefulWidget {
  GameScreen({super.key, required this.puzzle});

  static const String path = 'GameScreen';

  List<List<int>>? puzzle;
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final tickingTimer = TickingTimer();

  @override
  void initState() {
    tickingTimer.start();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _gameHeader(),
            const SizedBox(height: 20),
            GameStats(),
            const SizedBox(height: 20),
            GameBoard(boardWidth: screenWidth * 0.9),
            const SizedBox(height: 20),
            NumberPad(),
            const SizedBox(height: 20),
            ActionGameButtons()
          ],
        ),
      ),
    );
  }

  Widget _gameHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          context.pop();
        }, icon: Icon(Icons.arrow_back)),
        StreamBuilder(
            stream: tickingTimer.stream, builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('error');
              } else if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              } else {
                return Text('else');
              }
        }),
        IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
      ],
    );
  }
}
