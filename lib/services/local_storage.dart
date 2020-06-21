import 'package:flutter/cupertino.dart';
import 'package:sembast/sembast.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/services/app_database.dart';

class LocalStorage {
  static const DBNAME = "todos";

  final _todosStore = intMapStoreFactory.store();

  Future<Database> get _db async => await AppDatabase.instance.database;

  // @override
  Future<void> saveTodo(Todo todo) async {
    try {
      await _todosStore.add(await _db, todo.toJson());
    } catch (e) {
      print("$e");
    }
  }

  Future<void> updateTodo(Todo todo) async {
    try {
      final finder = Finder(filter: Filter.equals('id', todo.id));

      await _todosStore.update(await _db, todo.toJson(), finder: finder);
    } catch (e) {
      print("$e");
    }
  }

  Future<List<Todo>> getTodos() async {
    final recordSnapshots = await _todosStore.find(await _db);

    List<Todo> _todos = [];
    recordSnapshots.forEach((todo) {
      Todo todoitem = Todo.fromJson(todo.value);
      _todos.add(todoitem);
    });
    return _todos;
  }

  Future<void> deleteTodos(Todo todo) async {
    final finder = Finder(filter: Filter.equals('id', todo.id));
    await _todosStore.delete(await _db, finder: finder);
  }
}
