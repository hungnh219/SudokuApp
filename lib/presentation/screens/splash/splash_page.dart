import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';

// task: auto navigate after 5s

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    int heightScreen = MediaQuery.of(context).size.height.toInt();
    // Future.delayed(Duration(seconds: 200), () {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) {
    //       return HomePage();
    //     }),
    //   );
    // });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/splash-background.png',
                  fit: BoxFit.cover,
                  // scale: 0.1,
                ),
              ),
              Positioned(
                  top: 16,
                  right: 16,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                    },
                    child: Text('Next'),
                  ),
                ),
              Positioned(
                top: heightScreen * 0.45,
                child: Image.asset('assets/images/splash-sudoku-board.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}