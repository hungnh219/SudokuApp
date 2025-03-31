import 'package:flutter/material.dart';

class ActionGameButtons extends StatelessWidget {
  const ActionGameButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('click')),
        ElevatedButton(onPressed: () {}, child: Text('click')),
        ElevatedButton(onPressed: () {}, child: Text('click')),
        ElevatedButton(onPressed: () {}, child: Text('click')),
        ElevatedButton(onPressed: () {}, child: Text('click')),
      ],
    );
  }
}
