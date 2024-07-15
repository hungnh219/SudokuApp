import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (_) => CellBloc(),
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: GameScreen(),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => CellBloc(),
        child: GameScreen(),
        ),
        // child: GameScreen())
      );
  }
}
