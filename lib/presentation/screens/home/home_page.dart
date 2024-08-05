import 'package:flutter/material.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/home/widgets/custom_home_button.dart';
import 'package:sudoku/presentation/screens/splash/splash_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    continueClicked() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GamePage()));
    }

    newClicked() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GamePage()));
    }

    aboutClicked() {
      print('about clicked');
    }

    splashClicked() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashPage()));
    }

    var widthScreen = MediaQuery.of(context).size.width;

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
            height: 480,
            width: double.infinity,
            color: Colors.black.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudoku',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('HH'),
              ],
            ),
          ),
          Container(
            // color: Colors.black.withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomHomeButton(
                      onClick: continueClicked, textButton: 'continue'),
                  CustomHomeButton(onClick: newClicked, textButton: 'new'),
                  CustomHomeButton(onClick: aboutClicked, textButton: 'about'),
                  CustomHomeButton(
                      onClick: splashClicked, textButton: 'splash'),
                  SizedBox(height: 180),
                ]),
          ),
        ]),
      ),
    );
  }
}
