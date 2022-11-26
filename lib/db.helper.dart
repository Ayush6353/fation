import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper instants = DatabaseHelper._();

  static final db_name = 'Student.db';
  static final tl_name = 'Info';
  static final id = 'Id';
  static final name = 'Name';

  static Database? database;

  Future<Database> get getDatabase async {
    if (database != null) return database!;

    database = await intDatabase();
    return database!;
  }

  intDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, db_name);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) {
    db.execute('''
    Create Table $tl_name(
    $id INTEGER PRIMARY KEY,
    $name Text not null
    )
    ''');
  }

  insertData(Map<String, dynamic> data) async {
    Database db = await instants.getDatabase;
    return await db.insert(tl_name, data);
  }

  getAllData() async {
    Database db = await instants.getDatabase;
    return await db.query(tl_name);
  }

  updateData(Map<String, dynamic> data) async {
    Database db = await instants.getDatabase;
    int id = data[DatabaseHelper.id];
    return await db.update(tl_name, data,
        where: '${DatabaseHelper.id} = ? ', whereArgs: [id]);
  }

  deletData(id) async {
    Database db = await instants.getDatabase;
    return await db
        .delete(tl_name, where: '${DatabaseHelper.id} = ?', whereArgs: [id]);
  }
}