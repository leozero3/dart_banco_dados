import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    var settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: 'leozero',
        db: 'dart_mysql');

    final connection = await MySqlConnection.connect(settings);
    await Future.delayed(Duration(seconds: 1));
    return connection;
  }
}
