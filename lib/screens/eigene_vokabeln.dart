import 'package:englisch_lern_app/database/databasehelper.dart';
import 'package:englisch_lern_app/screens/add-entry.dart';
import 'package:flutter/material.dart';

import 'klassen.dart';

class VokList extends StatefulWidget {
  @override
  _VokListState createState() => _VokListState();
}

class _VokListState extends State<VokList> {
  vokEntries entries;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eigene Vokabeln'),
      ),
      body: FutureBuilder<List<vokEntries>>(
        future: DatabaseHelper.instance.getvokEntries(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data[index].vok_en),
                  //leading: Text(snapshot.data[index].id.toString()),
                  subtitle: Text(snapshot.data[index].vok_de),
                  onTap: () => _navigateToDetail(context, snapshot.data[index]),
                  trailing: IconButton(
                      alignment: Alignment.center,
                      icon: Icon(Icons.delete),
                      onPressed: () async {
                        _deleteVok(context, snapshot.data[index]);
                        setState(() {});
                      }),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("Oops!");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToCreateVok(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  //Nutzung für die Navigation zur add-entry screen
// awaits results from Navigator.pop
  _navigateToCreateVok(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => addVok()),
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));
  }
}




_deleteVok(BuildContext context, vokEntries entries) {
  DatabaseHelper.instance.deleteEntry(entries.id);
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("Du hast eine Vokabel gelöscht"),
    //duration: 3 ,
  ));
}

_navigateToDetail(BuildContext context, vokEntries entries ) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => addVok(entries: entries,)),
  );
}


