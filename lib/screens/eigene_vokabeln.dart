import 'package:flutter/material.dart';

import '../main.dart';

class VokList extends StatefulWidget {
  @override
  _VokListState createState() => _VokListState();
}

class _VokListState extends State<VokList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meine Vokabeln'),
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Englisch')),
          DataColumn(label: Text('Deutsch')),
          DataColumn(label: Text('Kommentar')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Oblivion')),
            DataCell(Text('Vergessenheit, Vergessen')),
            DataCell(Text('Test'))
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addtableentry');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
