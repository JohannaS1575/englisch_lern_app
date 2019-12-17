import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Englisch-Lern App"),
          actions: <Widget>[
            Icon(Icons.person),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Willkommen Max Mustermann",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                          "Schön, dass du da bist."
                          "Was möchtest du heute tun?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue[900],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/images/vokabeln.png"),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Vokabeln'),
                                onPressed: () { /* ... */ },
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/images/grammar.png"),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('Grammatik'),
                                onPressed: () { /* ... */ },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),





                ]
            )
        )
    );
  }
}


