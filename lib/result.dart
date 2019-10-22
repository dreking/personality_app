import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetApp;

  Result(this.totalScore, this.resetApp);

  String get resultPhrase {
    String res;
    if (totalScore <= 8)
      res = 'You are awesome\nYour score: $totalScore';
    else if (totalScore < 12)
      res = 'You are likable\nYour score: $totalScore';
    else if (totalScore < 16)
      res = 'You are strange\nYour score: $totalScore';
    else
      res = 'You are bad\nYour score: $totalScore';

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30),
          ),
          FlatButton(
            child: Text('Go Back'),
            textColor: Colors.blue,
            onPressed: resetApp,
          )
        ],
      ),
    );
  }
}
