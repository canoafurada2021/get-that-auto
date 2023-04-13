import 'package:sqflite/sqflite.dart';
import 'package:teste/database/database_connection.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;


  Future <Database> get database async{
    return _database ??= await _databaseConnection.setDatabase();
  }

  /// Inserting data on table
  insertData(table,data)async{
    var connection=await database;
    return await connection.insert(table,data);
  }
}

