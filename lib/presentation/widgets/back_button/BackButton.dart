import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'back', style: TextStyle(color: Colors.yellow),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
