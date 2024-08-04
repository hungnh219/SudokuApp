import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sudoku/presentation/screens/game/game_page.dart';
import 'package:sudoku/presentation/screens/splash/splash_page.dart';

class CustomHomeButton extends StatelessWidget {
  CustomHomeButton({super.key, required this.onClick, required this.textButton});

  var onClick;
  var textButton;

  @override
  Widget build(BuildContext context) {
      // String capitalizedTextButton = textButton.capitalize();
      var boxDecoration = new BoxDecoration(
        color: const Color.fromARGB(255, 238, 88, 238),
        borderRadius: BorderRadius.circular(20),
      );

      var textStyle = new TextStyle(
        color: Colors.white,
        fontSize: 24,
      );

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: onClick,
        child: Container(
          decoration: boxDecoration,
          width: MediaQuery.of(context).size.width*0.4,
          height: 40,
          child: Center(child: Text(textButton, style: textStyle,))
        ),
      ),
    );
  }
}