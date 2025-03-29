import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  const NumberPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('1'),
        Text('2'),
        Text('3'),
        ElevatedButton(onPressed: () {}, child: Text('click'))
      ],
    );
  }
}
