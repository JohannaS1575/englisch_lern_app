import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/uebersicht-vokabeln.dart';
import 'package:englisch_lern_app/screens/uebersicht_grammar.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 35,
              minHeight: 35,
              maxWidth: 35,
              maxHeight: 35,
            ),
            child: Image.asset('assets/images/Flags.png', fit: BoxFit.scaleDown),
            ),

          title: Text("Englisch-Lern App"),
          actions: <Widget>[
            Icon(Icons.person),
          ],
        ),
        body: ListView.builder(

            itemBuilder: (context, index) {
              const EdgeInsets.all(8.0);
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(45.0, 20.0, 0.0, 0.0),
                  child: Text(
                    "Willkommen Max Mustermann",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                  ),
                 ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(45.0, 15.0, 20.0, 15.0),
                  child: Text(
                    "Schön, dass du da bist.\nWas möchtest du heute tun?",
                   // textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> GrammarUebersicht()));
                          },
                          child: Padding (
                            padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
                            child: Image(
                            //height: 130.0,
                            image: AssetImage("assets/images/vokabeln.png",
                            ),
                          ),
                          )
                        ),

                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Vokabeln',
                              style:
                              TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                              onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                              },
                          ),
                        ],
                        ),
                    ],
                    ),
                  ),
              ),


                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> GrammarUebersicht()));
                          },

                          child: Padding (
                            padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0.0),
                            child: Image(
                              //height: 130.0,
                              image: AssetImage("assets/images/grammar.png",
                              ),
                            ),
                          )
                        ),

                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                        FlatButton(
                          child: const Text('Grammatik',
                            style:
                            TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> GrammarUebersicht()));
                            },
                        ),
                      ],
                      ),
                    ],
                  ),
                )
                )
              ]
              );
            }
        )
    );
  }
}


