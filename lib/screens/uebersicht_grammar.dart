import 'package:englisch_lern_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:englisch_lern_app/screens/uebersicht-vokabeln.dart';
import 'package:englisch_lern_app/screens/details_grammar.dart';
import 'package:englisch_lern_app/screens/quiz1.dart';

class GrammarUebersicht extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grammatikübersicht',
        theme: ThemeData(
          primaryColor: Color(0xFFFF8888),
        ),
        home: Scaffold(
            appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    // size: 20.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),

                title: Text('Grammatikübersicht')

            ),
            body: ListView.builder(

                itemBuilder: (context, index) {
                  const EdgeInsets.all(8.0);
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Quiz'),
                          subtitle: Text('Teste dein Wissen'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quiz1()));
                            },
                          ),
                        ),
                      ),

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.library_books,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch A1'),
                          subtitle: Text('Basiswissen'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                            },
                          ),
                        ),
                      ),


                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch A2'),
                          subtitle: Text('Basiswisssen'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                            },
                          ),
                        ),
                      ),

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch B1'),
                          subtitle: Text('Fortgeschritten'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                            },
                          ),
                        ),
                      ),

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch B2'),
                          subtitle: Text('Fortgeschritten'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                            },
                          ),
                        ),
                      ),

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch C1'),
                          subtitle: Text('Fortgeschritten'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                            },
                          ),
                        ),
                      ),

                      Card( //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.laptop_chromebook,
                              color: Color(0xFFFFBF84)),
                          title: Text('Englisch C2'),
                          subtitle: Text('Expertenwissen'),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                              // color: Colors.brown[900],
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VokUebersicht()));
                            },
                          ),
                        ),
                      ),

                    ],
                  );
                }
            )
        )
    );
  }
}

/*
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {

  final titles = ['Quiz', 'Englisch A1', 'Englisch A2', 'Englisch B1', 'Englisch B2',
    'Englisch C1', 'Englisch C2'];

  final icons = [Icons.laptop_chromebook, Icons.library_books,
    Icons.collections_bookmark, Icons.book, Icons.library_books,
    Icons.collections_bookmark, Icons.book];

  final subtitle = ['Teste dein Wissen', 'Basiswissen', 'Bassiswissen', "Fortgeschritten",
    "Fortgeschritten", "Expertenwissen", "Expertenwissen"];

  final route = [];



  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {

      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index], color: Color(0xFFFFBF84)),
          title: Text(titles[index]),
          subtitle: Text(subtitle[index]),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
             // color: Colors.brown[900],
            ),
            onPressed: () {
              //Navigator.pushNamed(context, BuildContext.route);
            },
          ),
        ),
      );
    },
  );
}


*/