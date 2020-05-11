import 'package:englisch_lern_app/screens/add-entry.dart';
import 'package:englisch_lern_app/screens/eigene_vokabeln.dart';
import 'package:englisch_lern_app/screens/quiz1.dart';
import 'package:englisch_lern_app/screens/quiz_screen.dart';
import 'package:englisch_lern_app/screens/splash-screen.dart';
import 'package:englisch_lern_app/screens/uebersicht-vokabeln.dart';
import 'package:englisch_lern_app/screens/uebersicht_grammar.dart';
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
        textTheme: TextTheme(

        ),
        fontFamily: 'Century Gothic',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/vokuebersicht': (context) => VokUebersicht(),
        '/grammaruebersicht': (context) => GrammarUebersicht(),
        '/quiz': (context) => Quiz(),
        '/quiz1': (context) => Quiz1(),
        '/eigeneVok': (context) => VokList(),
        '/addtableentry': (context) => TableEntry()

      },
    );
  }
}

