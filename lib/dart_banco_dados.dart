import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  final database = Database();
  final mysqlConnection = await database.openConnection();

  await mysqlConnection.query(
    'insert into aluno(id, nome) values(?,?)',
    [
      null,
      'Isaac Gonzalez',
    ],
  );

  // await mysqlConnection.execute(
  //   "insert into aluno(id, nome) values(id, nome)",
  //   {
  //    'id' : null ,
  //     'nome':'Isaac',
  //   },
  // );

  print(mysqlConnection);

  // print(mysqlConnection.toString());

}
