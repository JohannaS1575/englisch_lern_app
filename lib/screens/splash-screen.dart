import 'package:englisch_lern_app/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primColor,
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.fromLTRB(0,200,0,0),
              ),
              Image(
                image: AssetImage("assets/images/Flags.png"),
              ),
              Text("Englisch-Lern-App"),
            ],
          )
        ),
      ),
    );
  }
}
