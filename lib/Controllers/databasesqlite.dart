import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSQLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databasePathFinal = join(databasePath, 'SQLITE_TAREFAS');
    return await openDatabase(
        databasePathFinal,
        version: 1,
        onCreate: (Database db, int version){
          final batch = db.batch();
          batch.execute('CREATE TABLE tarefa(id INTEGER PRIMARY KEY AUTOINCREMENT,'
              'autor TEXT, titulo TEXT, descricao TEXT, tempo_exec INTEGER)');
          batch.commit();
        }
    );
  }
}