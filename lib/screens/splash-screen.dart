import 'package:englisch_lern_app/main.dart';
import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/home_screen.dart';

/*
class SplashScreen extends StatefulWidget {
  @override
  State createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Animation<int> _characterCount;

  int _stringIndex;
  static const List<String> _kStrings = const <String>[
    'Inducesmile.com',
    'Flutter.dev',
    'Google.com',
  ];
  String get _currentString => _kStrings[_stringIndex % _kStrings.length];
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    setState(() {
      _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;
      _characterCount = new StepTween(begin: 0, end: _currentString.length)
          .animate(
          new CurvedAnimation(parent: controller, curve: Curves.easeIn));
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle textStyle = theme.textTheme.title.copyWith(
      color: theme.primaryColor,
    );
    return new Scaffold(
      appBar: AppBar(title: Text("Typing Text Animation")),
      body: new Container(
        margin: new EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: _characterCount == null
            ? null
            : new AnimatedBuilder(
          animation: _characterCount,
          builder: (BuildContext context, Widget child) {
            String text =
            _currentString.substring(0, _characterCount.value);
            return new Text(text, style: textStyle);
          },
        ),
      ),
    );
  }
}


 */

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

              Text("Englisch Lern App",
                style:
                TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


