import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // print('back');
        // Navigator.of(context).pop();
        Navigator.pop(context);
      },
      child: Text(
        'back',
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}
