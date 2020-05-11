import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

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

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index], color: Color(0xFFFFBF84)),
          title: Text(titles[index]),
          subtitle: Text(subtitle[index]),
          trailing: Icon(Icons.arrow_forward_ios),
           // onTap: () {
           //   Navigator.of(context).pushNamed('/quiz');
           // }
        ),
      );
    },
  );
}

