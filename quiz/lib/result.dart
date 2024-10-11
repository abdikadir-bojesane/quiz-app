import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int answer;
  final int falses;

  Result({Key? key, required this.answer, required this.falses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'THE ANSWERS $answer',
              style: TextStyle(fontSize: 34),
            ),
            Text(
              'Falses $falses',
              style: TextStyle(fontSize: 34),
            ),
          ],
        ),
      ),
    );
  }
}
