import 'package:sembast/sembast.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/services/app_database.dart';

abstract class ILocalStorage {
  Future<void> saveTodo(Todo todo);
  Future<List<Todo>> getTodos();
}

class LocalStorage implements ILocalStorage {
  static const DBNAME = "todos";

  final _todosStore = intMapStoreFactory.store();
  Future<Database> get _db async => await AppDatabase.instance.database;

  @override
  Future<void> saveTodo(Todo todo) async {
    await _todosStore.add(await _db, todo.toJson());
  }

  Future<List<Todo>> getTodos() async {
    final recordSnapshots = await _todosStore.find(await _db);
    
  }
}
