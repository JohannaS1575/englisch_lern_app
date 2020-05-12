import 'package:englisch_lern_app/screens/klassen.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  //Create a private constructor
  DatabaseHelper._();

  static const databaseName = 'vok_database.db';
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
              "CREATE TABLE myvok(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, englisch TEXT, deutsch TEXT, kommentar TEXT)");
        });
  }

  insertVok(vokEntries entries) async {
    final db = await database;
    var res = await db.insert(vokEntries.TABLENAME, entries.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return res;
  }

  Future<List<vokEntries>> getvokEntries() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(vokEntries.TABLENAME);

    return List.generate(maps.length, (i) {
      return vokEntries(
          id: maps[i]['id'],
          vok_en: maps[i]['englisch'],
          vok_de: maps[i]['deutsch'],
          vok_ko: maps[i]['kommentar']
      );
    });
  }

  updateEntry(vokEntries entries) async {
    final db = await database;

    await db.update(vokEntries.TABLENAME, entries.toMap(),
        where: 'id = ?',
        whereArgs: [entries.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  deleteEntry(int id) async {
    var db = await database;
    db.delete(vokEntries.TABLENAME, where: 'id = ?', whereArgs: [id]);
  }
}
