import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  final mysqlConnection = await database.openConnection();

  var resultado = await mysqlConnection.query(
    'insert into aluno(id, nome) values(?,?)',
    [
      null,
      'Isaac gonzalez',
    ],
  );

  print(resultado.affectedRows);
  // print(mysqlConnection.toString());

}
