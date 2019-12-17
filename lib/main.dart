import 'package:englisch_lern_app/screens/splash-screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

const primColor =  Color(0xFFFF8888);
const secColor = Color(0xFFFFBF84);
const lightColor = Color(0xFFFFF1AD);
const corransColor = Color(0xFFB2EEA8);
const blueColor = Color(0xFFA6EAF0);




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primColor,
        accentColor: secColor,
        fontFamily: 'Century Gothic',
      ),
      home: SplashScreen(),
    );
  }
}

