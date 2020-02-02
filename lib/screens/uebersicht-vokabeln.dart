import 'package:flutter/material.dart';
import 'klassen.dart';

class VokUebersicht extends StatefulWidget {
  @override
  _VokUebersichtState createState() => _VokUebersichtState();
}

class _VokUebersichtState extends State<VokUebersicht> {

  List<cardInhalt> inhalt = [
    cardInhalt(image: 'assets/images/vokabeln.png', title: 'eigene Vokabeln'),
    cardInhalt(image: 'assets/images/familie-card.jpg', title: 'Familie'),
    cardInhalt(image: 'assets/images/zahlen-card.jpg', title: 'Zahlen'),
    cardInhalt(image: 'assets/images/tiere-card.jpg', title: 'Tiere'),
    cardInhalt(image: 'assets/images/verben-card.jpg', title: 'Verben'),
    cardInhalt(image: 'assets/images/vokabeln.png', title: 'Essen'),
    cardInhalt(image: 'assets/images/vokabeln.png', title: 'Reisen')
  ];

  Widget themaCards(headlines) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            headlines.image,
            width: 50,
            height: 100,
            fit: BoxFit.cover,
          ),
          //SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              headlines.title,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overview")
      ),
      body: Column(
        children: inhalt.map((headlines) => themaCards(headlines)).toList(),
      ),
    );
  }
}



