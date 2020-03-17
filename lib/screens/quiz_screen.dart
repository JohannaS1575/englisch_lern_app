import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/quiz1.dart';

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
              color: Colors.red,
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

  // Method to start quiz
void startQuiz(){
    setState(() {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz1));
    });
}





}
