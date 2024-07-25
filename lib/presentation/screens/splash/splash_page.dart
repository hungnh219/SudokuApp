import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';

// task: auto navigate after 5s

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.asset(
                'images/splash-background.png',
                fit: BoxFit.fill,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return GamePage();
                  })
                );
              }, child: Text('Next'))
            ]
          )
        )
      ),
    );
  }
}