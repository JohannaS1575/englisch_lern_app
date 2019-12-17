import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/beagle.jpg"),
              )
            ],
          )
        ),
      ),
    );
  }
}
