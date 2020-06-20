import 'dart:math';

import 'package:flutter/cupertino.dart';
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
    state = TodoState(todos: todos);
  }

  void add(String title, String subtitle) {
    final currentState = state;
    if (currentState is TodoStateData) {
      final todo = Todo(
          id: rand.nextInt(100).toString(), title: title, subtitle: subtitle);
      //update
      final todos = currentState.todos.toList()..add(todo);
      //localstorage
      read<LocalStorage>().saveTodo(todo);
      //update state
      state = currentState.copyWith(
        todos: todos,
      );
    }
  }

  void toggle(Todo todo) {
    final currentState = state;
    if (currentState is TodoStateData) {
      final todos = currentState.todos.map((t) {
        if (t == todo) {
          return t.copyWith(
            isDone: !t.isDone,
          );
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
      final todos = currentState.todos;
      todos.removeWhere((todoEle) => todoEle.id == todo.id);
      read<LocalStorage>().deleteTodos(todo);
    }
  }
}
