import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EnglishQuiz{

  var images = ["familie-card", "tiere-card", "verben-card", "essen-card"];

  var questions = [
    "Was ist das und das? 1",
    "Was ist dies und das? 2",
    "Was ist das? 3",
    "Was ist das? 4"
  ];

  var choices = [
    ["Antwort 1", "Antwort 2", "Antwort3", "Antwort4"],
    ["Antwort 1", "Antwort 2", "Antwort3", "Antwort4"],
    ["Antwort 1", "Antwort 2", "Antwort3", "Antwort4"],
    ["Antwort 1", "Antwort 2", "Antwort3", "Antwort4"],
  ];

  var correctAnswers = [
    "Antwort 1", "Antwort 2", "Antwort3", "Antwort4"
  ];

}

var finalScore = 0;
var questionNumber = 0;
var quiz = EnglishQuiz();




class Quiz1 extends StatefulWidget {
  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[

              Padding(padding: EdgeInsets.all(20.0)),

              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text("Question ${questionNumber + 1} of ${quiz.questions
                        .length}",
                      style: TextStyle(
                          fontSize: 22.0
                      ),
                    ),

                    Text("Score: $finalScore",
                      style: TextStyle(
                          fontSize: 22.0
                      ),
                    ),
                  ],
                ),
              ),

              //image
              Padding(padding: EdgeInsets.all(10.0)),
              Image.asset(
                  "assets/images/${quiz.images[questionNumber]}.jpg"
              ),

              Padding(padding: EdgeInsets.all(15.0)),

              Text(quiz.questions[questionNumber],
                style: TextStyle(
                    fontSize: 20.0
                ),
              ),

              Padding(padding: EdgeInsets.all(10.0)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  // Button 1
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.amber,
                    onPressed: () {

                      if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },

                    child: Text(quiz.choices[questionNumber][0],
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),

                  // Button 2
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.amber,
                    onPressed: () {

                      if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },

                    child: Text(quiz.choices[questionNumber][1],
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),

                ],
              ),

              Padding(padding: EdgeInsets.all(10.0)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  // Button 3
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.amber,
                    onPressed: () {

                      if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },

                    child: Text(quiz.choices[questionNumber][2],
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),

                  // Button 4
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.amber,
                    onPressed: () {

                      if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                        debugPrint("Correct");
                        finalScore++;
                      } else {
                        debugPrint("Wrong");
                      }
                      updateQuestion();
                    },

                    child: Text(quiz.choices[questionNumber][3],
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black
                      ),
                    ),
                  ),

                ],
              ),

              Padding(padding: EdgeInsets.all(10.0)),

              Container(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: Colors.red,
                  minWidth: 240.0,
                  height: 40.0,
                  onPressed: resetQuiz,
                  child: Text ("Quit",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                  ),),
                ),
              )

            ],
          ),
        ),

      ),
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }
}


class Summary extends StatelessWidget {
  final int score;

  Summary({Key key, @required this.score}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(

            body: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("Final Score: $score",
                      style: TextStyle(
                          fontSize: 25.0
                      ),),

                    Padding(padding: EdgeInsets.all(10.0)),

                    MaterialButton(
                      color: Colors.red,
                      onPressed: () {
                        questionNumber = 0;
                        finalScore = 0;
                        Navigator.pop(context);
                      },
                      child: Text("Reset Quiz"),

                    ),
                  ]
              ),
            )
        )
    );
  }

}
