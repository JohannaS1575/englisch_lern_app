import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFBF84),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('A1 Basiswissen',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 18.0, color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 30.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),


              Positioned(
                top: 60.0,
                left: 35.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Grammatik: Simple Present",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Im Deutschen nennen wir diese Zeitform\nPräsens oder einfache Gegenwart.\n"
                            "Mit dem Simple Present werden Handlungen\nin der Gegenwart ausgedrückt, die regelmäßig oder\nwiederholt stattfinden, nacheinander ablaufen,\nallgemeine Gültigkeit besitzen oder z.B. durch einen\nFahrplan festgelegt sind.",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: Colors.black54)),
                      ],

                    ),


                  ],
                ),
              ),
              Positioned(
                top: 300.0,
                left: 30.0,
                child: Container(
                  height: 250.0,
                  width: 350.0,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFFFBF84),
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: Column(
                    children: <Widget>[
                      SizedBox(width: 30.0, height: 5.0,),
                      Text('Bildung des Simple Present',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0)),

                      SizedBox(width: 30.0, height: 35.0,),
                      Text('Positiv: He says \n\n Negativ: He does not say \n\n Frage: Does he say?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color:Colors.black54,
                              fontSize: 15.0
                          ))
                    ],

                  ),
                ),
              ),


            ],

          ),

        ],

      ),
    );

  }
}
