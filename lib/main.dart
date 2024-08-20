import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sudoku/bloc/cell/cell_bloc.dart';
import 'package:sudoku/bloc/cell/cell_tapped_bloc.dart';
import 'package:sudoku/bloc/game/game_bloc.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/game/test_game_page.dart';
import 'package:sudoku/presentation/screens/home/home_page.dart';
import 'package:sudoku/presentation/screens/splash/splash_page.dart';

void main() {
  runApp(
    MyApp());
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CellBloc()),
        BlocProvider(create: (_) => GameBloc()),
        BlocProvider(create: (_) => CellTappedBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
          // child: GameScreen())
        ),
    );
  }
}
