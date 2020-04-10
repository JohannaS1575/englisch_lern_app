import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class cardInhalt {

  String image;
  String title;
  String route;

  cardInhalt({ this.image, this.title, this.route });
}

class vokEntries {
  int id;
  String vok_en;
  String vok_de;
  String vok_ko;
  static const String TABLENAME = "eigenevok";

  vokEntries({this.id, this.vok_en, this.vok_de, this.vok_ko});

  Map<String, dynamic> toMap() {
    return {'id': id, 'englisch': vok_en, 'deutsch': vok_de, 'kommentar': vok_de};
  }
}

class DatabaseHelper {

  //Create a private constructor
  DatabaseHelper._();

  static const databaseName = 'eigenevok_database.db';
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database _database;

  Future<Database> get database async {
    if (_database == null) {
      return await initializeDatabase();
    }
    return _database;
  }

  initializeDatabase() async {
    return await openDatabase(join(await getDatabasesPath(), databaseName),
        version: 1, onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE eigenevok(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, englisch TEXT, deutsch TEXT, kommentar TEXT)");
        });
  }

}