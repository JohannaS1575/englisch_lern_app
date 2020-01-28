import 'package:flutter/material.dart';

class VokUebersicht extends StatefulWidget {
  @override
  _VokUebersichtState createState() => _VokUebersichtState();
}

class _VokUebersichtState extends State<VokUebersicht> {

  List<String> inhalt = [
    'Vokabeln',
    'Familie',
    'Zahlen',
    'Tiere',
    'Verben',
    'Essen',
    'Reisen'
  ];

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



Widget themaCards(headlines) {
  return Card(
    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(
          'assets/images/vokabeln.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.0),
        Text(
          headlines,
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    ),
  );
}