import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/widget/pause_play_button.dart';
import 'package:sudoku/presentation/screens/game/widget/time_counter.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';
import 'package:sudoku/presentation/widgets/back_button/BackButton.dart';

class GameHeader extends StatelessWidget {
  const GameHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        // color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeButton(),
            TimeCounter(),
            // BackButtonCustom(),
            PauseButton(),
          ],
        ));
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }
}

class PauseButton extends StatefulWidget {
  const PauseButton({super.key});

  @override
  State<PauseButton> createState() => _PauseButtonState();
}

class _PauseButtonState extends State<PauseButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.pause),
      onPressed: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }
}
