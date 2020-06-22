import 'package:sembast/sembast.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/models/user.dart';
import 'package:state_notifier_provider/services/app_database.dart';

class LocalStorage {
  static const DBNAME = "todos";
  final String loggedInUser = "loggedInUser";

  final _todosStore = intMapStoreFactory.store();
  final _auth = stringMapStoreFactory.store('authStore');

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

  Future<bool> loginUser(User user) async {
    final login =
        await _auth.record(loggedInUser).put(await _db, user.toJson());
    if (login.isNotEmpty)
      return true;
    else
      return false;
  }

  Future<bool> getLoggedInUser() async {
    final exists = await _auth.record(loggedInUser).get(await _db);
    if (exists != null)
      return true;
    else
      return false;
  }

  Future<bool> logoutUser() async {
    final logout = await _auth.record(loggedInUser).delete(await _db);
    if (logout != null)
      return true;
    else
      return false;
  }
}
