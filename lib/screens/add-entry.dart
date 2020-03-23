import 'package:flutter/material.dart';

class TableEntry extends StatefulWidget {
  @override
  _TableEntryState createState() => _TableEntryState();
}

class _TableEntryState extends State<TableEntry> {

  String vokEnglisch;
  String vokDeutsch;
  String vokKommentar;
  String required = 'Dieses Feld muss befüllt werden';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget entextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Englisch'),
      validator: (String value) {
        if (value.isEmpty) {
          return required;
        }
        return null;
      },
      onSaved: (String value) {
        vokEnglisch = value;
      },
    );
  }

  Widget detextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Deutsch'),
      validator: (String value) {
        if (value.isEmpty) {
          return required;
        }
        return null;
      },
      onSaved: (String value) {
        vokDeutsch = value;
      },
    );
  }

  Widget kotextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Kommentar'),
      onSaved: (String value) {
        vokKommentar = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Füge neue Vokabeln hinzu"),
        ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                entextfield(),
                SizedBox(height: 10),
                detextfield(),
                SizedBox(height: 10),
                kotextfield()
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //kommt noch
          if(!_formKey.currentState.validate()) {
            return;
          }
          _formKey.currentState.save();
          //zum testen
          print(vokEnglisch);
          print(vokDeutsch);
          print(vokKommentar);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
