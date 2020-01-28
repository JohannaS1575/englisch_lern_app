import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vokabelquiz"),
      ),

      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            MaterialButton(
              height: 50.0,
              color: Colors.grey,
              onPressed: null,
              child: Text("Quiz 1",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
