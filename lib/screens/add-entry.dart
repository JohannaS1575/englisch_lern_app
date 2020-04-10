import 'package:englisch_lern_app/screens/klassen.dart';
import 'package:flutter/material.dart';

class TableEntry extends StatefulWidget {
  final vokEntries entries;
  const TableEntry({Key key, this.entries}) : super(key: key);

  @override
  _TableEntryState createState() => _TableEntryState();
}

class _TableEntryState extends State<TableEntry> {
  vokEntries entries;
  final enTextController = TextEditingController();
  final deTextController = TextEditingController();
  final koTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    enTextController.dispose();
    deTextController.dispose();
    koTextController.dispose();
  }

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
      controller: enTextController,
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
      controller: deTextController,
    );
  }

  Widget kotextfield() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Kommentar'),
      controller: koTextController,
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
        child: Icon(Icons.save),
        onPressed: () {
          DatabaseHelper().insertVok(vokEntries(
            vok_en: enTextController.text,
            vok_de: deTextController.text,
            vok_ko: koTextController.text,));

        },
      ),
    );
  }
}

/*_saveVok(String en, String de, String ko) async {
  if (vokEntries == )

}

*/