import 'package:englisch_lern_app/main.dart';
import 'package:flutter/material.dart';


class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () {
          Navigator.pushNamed(context, '/home');
        }
    );
  }

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


                Text("Englisch Lern App",
                  style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            )
        ),
      ),


    );
  }
}



/*class SplashScreen extends StatelessWidget {



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
*/

