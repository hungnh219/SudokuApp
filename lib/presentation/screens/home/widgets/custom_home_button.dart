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
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black, width: 2),
      );

      var textStyle = new TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onClick,
        child: Container(
          decoration: boxDecoration,
          width: MediaQuery.of(context).size.width*0.4,
          height: 48,
          child: Center(child: Text(textButton, style: textStyle,))
        ),
      ),
    );
  }
}