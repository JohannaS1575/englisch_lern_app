import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/uebersicht_grammar.dart';

class EnglishQuiz{

  var images = ["quizbild1", "quizbild2", "quizbild3", "quizbild4"];

  var questions = [
    "I would go to this restaurant if you ___ me.",
    "I _____ in another city if I had the chance.",
    "What's the participle of 'steal'?",
    "Let's meet ___ the front door."
  ];

  var choices = [
    ["asked", "have asked", "had asked", "ask"],
    ["live", "have lived", "would live", "life"],
    ["stole", "stealed", "stolen", "stoled"],
    ["at", "in", "on", "below"],
  ];

  var correctAnswers = [
    "asked", "would live", "stolen", "at"
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
                          fontSize: 16.0
                      ),
                    ),

                    Text("Score: $finalScore",
                      style: TextStyle(
                          fontSize: 16.0
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

              Padding(padding: EdgeInsets.all(30.0)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  // Button 1
                  MaterialButton(
                    minWidth: 160.0,
                    color: Colors.white70,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        side: BorderSide(color: Colors.black, width: 2.0)
                    ),


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
                    minWidth: 160.0,
                    color: Colors.white70,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        side: BorderSide(color: Colors.black, width: 2.0)
                    ),

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
                    minWidth: 160.0,
                    color: Colors.white70,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        side: BorderSide(color: Colors.black, width: 2.0)
                    ),

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
                    minWidth: 160.0,
                    color: Colors.white70,
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        side: BorderSide(color: Colors.black, width: 2.0)
                    ),

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

              Padding(padding: EdgeInsets.all(25.0)),

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

                   Container(
                      alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        color: Color(0xFFFF8888),
                        onPressed: () {
                        questionNumber = 0;
                        finalScore = 0;
                        Navigator.pop(context);
                        },
                      /*  child: Text("Reset Quiz",
                          style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white
                          ),),

                       */
                        child: MaterialButton(
                          color: Colors.red,
                          minWidth: 240.0,
                          height: 40.0,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> GrammarUebersicht()));
                          },
                          child: Text ("Quit",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white
                            ),),
                        ),
                      )
                   ),
                ],
              )


            ),
        )
    );

  }


}
