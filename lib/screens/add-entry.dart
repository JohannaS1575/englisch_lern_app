import 'package:flutter/material.dart';

class TableEntry extends StatefulWidget {
  @override
  _TableEntryState createState() => _TableEntryState();
}

class _TableEntryState extends State<TableEntry> {

  String vokEnglisch;
  String vokDeutsch;
  String vokKommentar;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Füge neue Vokabeln hinzu"),
        ),
      body: Container(
        child: Form(
          child: Column(

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //kommt noch
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
