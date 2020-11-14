import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  Result(this.result);
  String get resultPhrase {
    var resultText = 'you did it';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'your result is ',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
