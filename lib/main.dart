import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('question answered');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('My Quiz App'),
        )),
        body: Column(
          children: <Widget>[
            Text('Questions'),
            RaisedButton(
              elevation: 10,
              child: Text('Question 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              elevation: 10,
              child: Text('Question 2'),
              onPressed: () => print('question 2 answered'),
            ),
            RaisedButton(
              elevation: 10,
              child: Text('Question 3'),
              onPressed: () => print('question 3 answered'),
            )
          ],
        ),
      ),
    );
  }
}
