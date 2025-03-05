import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sudoku/screens/initial/initial_screen.dart';
import 'package:sudoku/screens/main/home_screen.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) {
    return const SizedBox();
  },
  initialLocation: HomeScreen.path,
  routes: [
    GoRoute(
      name: InitialScreen.path,
      path: HomeScreen.path,
      builder: (context, state) {
        return HomeScreen();
      }
    ),
    GoRoute(
      name: HomeScreen.path,
      path: HomeScreen.path,
      builder: (context, state) {
          return HomeScreen();
      }
    )
  ],

);