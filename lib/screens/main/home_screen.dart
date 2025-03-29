import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sudoku/commons/strings/strings.dart';
import 'package:sudoku/screens/main/game/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = '/HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/home-background.png'),
                      fit: BoxFit.cover
                  )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.2),
                  _appName(),
                  SizedBox(height: screenHeight * 0.2),
                  Expanded(child: _homeButtons())
                ],
              )
            ],
          )
      ),
    );
  }

  Widget _appName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AppString.appName),
          Text(AppString.sudoku),
        ]
    );
  }

  Widget _homeButtons() {
    return Column(
      children: [
        ElevatedButton(onPressed: () {
          context.pushNamed(GameScreen.path, extra: null);
        }, child: Text(AppString.appName)),
        ElevatedButton(onPressed: () {}, child: Text('new')),
        ElevatedButton(onPressed: () {}, child: Text('new')),
      ],
    );
  }
}
