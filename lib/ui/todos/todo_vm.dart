import 'dart:math';

import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/services/local_storage.dart';

class TodoVM extends StateNotifier<TodoState> with LocatorMixin {
  TodoVM() : super(const TodoState.loading());

  var rand;
  @override
  void initState() async {
    super.initState();
    rand = new Random();
    getTodosFromdb();
  }

  void getTodosFromdb() async {
    final todos = await read<LocalStorage>().getTodos();
    print(todos);
    if (todos.isEmpty) {
      state = TodoState.empty();
    }
    state = TodoState(todos: todos);
  }

  void add(String title, String subtitle) {
    var currentState = state;
    if (currentState == TodoState.empty()) {
      currentState = TodoState();
    }
    if (currentState is TodoStateData) {
      //object
      final todo = Todo(
          id: rand.nextInt(100).toString(), title: title, subtitle: subtitle);
      //update
      final todos = currentState.todos.toList()..add(todo);
      //localstorage
      read<LocalStorage>().saveTodo(todo);
      //update state
      state = TodoState(
        todos: todos,
      );
    }
  }

  void toggle(Todo todo) {
    final currentState = state;
    if (currentState is TodoStateData) {
      final todos = currentState.todos.map((t) {
        if (t == todo) {
          var to = t.copyWith(
            isDone: !t.isDone,
          );
          read<LocalStorage>().updateTodo(to);
          return to;
        }
        return t;
      }).toList();

      state = TodoState(
        todos: todos,
      );
    }
  }

  void delete(Todo todo) {
    final currentState = state;
    if (currentState is TodoStateData) {
      var list = currentState.todos.where((t) => t != todo).toList();
      if (list.isEmpty) {
        state = TodoState.empty();
      } else {
        state = TodoState(todos: list);
        read<LocalStorage>().deleteTodos(todo);
      }
      // }
    }
  }
}
