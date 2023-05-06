import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:untitled1/database/model.dart';
class DataBase {
  Future<Database> initializedDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'store.db'),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE store(id INTEGER PRIMARY KEY , transaction INTEGER NOT NULL,month STRING NOT NULL,time TIME NOT NULL)",
        );
      },
    );}
  Future<int> insertPlanets(List<Model> money) async {
    int result = 0;
    final Database db = await initializedDB();
    for (var models in money) {
      result = await db.insert('money', models.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }

    return result;
  }
  Future<List<Model>> retrieveModel() async {
    final Database db = await initializedDB();
    final List<Map<String, Object?>> queryResult = await db.query('money');
    return queryResult.map((e) => Model.fromMap(e)).toList();
  }
}