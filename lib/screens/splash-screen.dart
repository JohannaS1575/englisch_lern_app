import 'package:englisch_lern_app/main.dart';
import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/home_screen.dart';

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

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
                child: Image(
                  image: AssetImage("assets/images/Flags.png"),
                ),
              ),

              Text("Englisch-Lern-App"),
            ],
          )
        ),
      ),
    );
  }
}
