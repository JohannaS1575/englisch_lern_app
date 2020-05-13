import 'package:flutter/cupertino.dart';
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
        body: Column (
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
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
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
              child: Text(
                "Schön, dass du da bist.\nWas möchtest du heute tun?",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),

            InkWell (
              onTap: () {
                Navigator.pushNamed(context, '/vokuebersicht');
              },
              child: Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/vokabeln.png',
                      width: 50,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Vokabeln',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            InkWell (
              onTap: () {
                Navigator.pushNamed(context, '/grammaruebersicht');
              },
              child: Card(
                margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/grammar.png',
                      width: 50,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Grammatik',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        )
    );
  }
}


