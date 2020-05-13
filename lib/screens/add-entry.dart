import 'package:englisch_lern_app/database/databasehelper.dart';

import 'klassen.dart';
import 'package:flutter/material.dart';

class addVok extends StatefulWidget {
  final vokEntries entries;

  const addVok({Key key, this.entries}) : super(key: key);


  @override
  _addVokState createState() => _addVokState(entries);
}

class _addVokState extends State<addVok> {
  vokEntries entries;

  final enTextController = TextEditingController();
  final deTextController = TextEditingController();
  final koTextController = TextEditingController();

  _addVokState(this.entries);

  @override
  void initState() {
    super.initState();
    if (entries != null) {
      enTextController.text = entries.vok_en;
      deTextController.text = entries.vok_de;
      koTextController.text = entries.vok_ko;
    }
  }

  @override
  void dispose() {
    super.dispose();
    enTextController.dispose();
    deTextController.dispose();
    koTextController.dispose();
  }

  Widget enTextfield() {
    return TextField(
        decoration: InputDecoration(labelText: 'Englisch'),
        controller: enTextController
    );
  }

  Widget deTextfield() {
    return TextField(
        decoration: InputDecoration(labelText: 'Deutsch'),
        controller: deTextController
    );
  }

  Widget koTextfield() {
    return TextField(
        decoration: InputDecoration(labelText: 'Kommentar'),
        controller: koTextController
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
          child: Column(
            children: <Widget>[
              enTextfield(),
              SizedBox(height: 10),
              deTextfield(),
              SizedBox(height: 10),
              //koTextfield()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () async {
            _saveVok(enTextController.text, deTextController.text, koTextController.text);
            setState(() {});
          }),
    );
  }

  _saveVok(String en, String de, String ko) async {
    if (entries == null) {
      DatabaseHelper.instance.insertVok(vokEntries(
          vok_en: enTextController.text,
          vok_de: deTextController.text,
          vok_ko: koTextController.text));
      Navigator.pop(context, "Deine Vokabel wurden gespeichert.");
    } else {
      await DatabaseHelper.instance
          .updateEntry(
          vokEntries(id: entries.id, vok_en: en, vok_de: de, vok_ko: ko));
      Navigator.pop(context, "Deine Vokabel wurde geändert");
    }
  }
}