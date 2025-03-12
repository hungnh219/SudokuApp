import 'package:flutter/material.dart';
import 'package:sudoku/screens/main/home_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static const String path = '/InitialScreen';

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
