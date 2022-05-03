import 'package:mysql1/mysql1.dart';
import 'package:mysql_client/mysql_client.dart';

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
    // Atenção para esse delay, devido a um problema no windows vc precisa adicionar esse delay
    //await Future.delayed(Duration(seconds: 2));
    return connection;
  }

// Future<MySQLConnection> openConnection() async {
//   var connection = MySQLConnection.createConnection(
//       host: '127.0.0.1',
//       port: 3306,
//       userName: 'root',
//       password: 'leozero',
//       databaseName: 'dart_mysql1');
//
//   await Future.delayed(Duration(seconds: 1));
//   return connection;
// }
}
