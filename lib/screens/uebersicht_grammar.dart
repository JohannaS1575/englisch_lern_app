import 'package:flutter/material.dart';

class GrammarUebersicht extends StatefulWidget {
  @override
  _GrammarUebersichtState createState() => _GrammarUebersichtState();
}

class cardInhalt1 {

  String image;
  String title;
  String route;

  cardInhalt1({ this.image, this.title, this.route });
}

class _GrammarUebersichtState extends State<GrammarUebersicht> {

  List<cardInhalt1> inhalt1 = [
    cardInhalt1(image: 'assets/images/vokabeln.png', title: 'Grammatik', route: '/eigeneVok'),
    cardInhalt1(image: 'assets/images/familie-card.jpg', title: 'Grammatik', route: '/grammaruebersicht'),
    cardInhalt1(image: 'assets/images/zahlen-card.jpg', title: 'Quiz', route: '/quiz1'),
    cardInhalt1(image: 'assets/images/tiere-card.jpg', title: 'Tiere', route: '/eigeneVok'),
    cardInhalt1(image: 'assets/images/verben-card.jpg', title: 'Verben', route: '/eigeneVok'),
    cardInhalt1(image: 'assets/images/essen-card.jpg', title: 'Essen', route: '/eigeneVok'),
    cardInhalt1(image: 'assets/images/reisen-card.jpeg', title: 'Reisen', route: '/eigeneVok')
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
              height: 150,
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
              crossAxisCount: 1,
              children: inhalt1.map((headlines) => themaCards(headlines)).toList(),
            ),
          )
        ],
      ),
    );
  }
}



