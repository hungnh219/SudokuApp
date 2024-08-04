import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/splash/splash_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/home-background.png',
              fit: BoxFit.cover,
              // scale: 0.1,
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('heheh'),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GamePage()));
                    },
                    child: Text("Continue")),
                ElevatedButton(onPressed: () {}, child: Text("New Game")),
                ElevatedButton(onPressed: () {}, child: Text("About")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SplashPage()));
                    },
                    child: Text("Splash")),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
