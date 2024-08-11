import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key});

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
