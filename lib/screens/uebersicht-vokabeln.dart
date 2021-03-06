import 'package:flutter/material.dart';
import 'klassen.dart';

class VokUebersicht extends StatefulWidget {
  @override
  _VokUebersichtState createState() => _VokUebersichtState();
}

class _VokUebersichtState extends State<VokUebersicht> {

  List<cardInhalt> inhalt = [
    cardInhalt(image: 'assets/images/vokabeln.png', title: 'Eigene Vokabeln', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/familie-card.jpg', title: 'Familie', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/zahlen-card.jpg', title: 'Zahlen', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/tiere-card.jpg', title: 'Tiere', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/verben-card.jpg', title: 'Verben', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/essen-card.jpg', title: 'Essen', route: '/eigeneVok'),
    cardInhalt(image: 'assets/images/reisen-card.jpeg', title: 'Reisen', route: '/eigeneVok')
  ];

  Widget themaCards(headlines) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, headlines.route);
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              headlines.image,
              width: 50,
              height: 140,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                headlines.title,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overview"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverGrid.count(
                crossAxisSpacing: 0,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
              children: inhalt.map((headlines) => themaCards(headlines)).toList(),
            ),
          )
        ],
      ),
    );
  }
}



