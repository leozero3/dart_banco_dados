import 'package:mysql1/mysql1.dart';

class Database {

  Future<MySqlConnection> openConnection() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'dart_mysql',
      password: 'leozero',
    );

    final connection = await MySqlConnection.connect(settings);
    await Future.delayed(Duration(seconds: 2));
    return connection;
  }
}
