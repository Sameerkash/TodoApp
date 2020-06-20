import 'dart:math';

import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/models/Todo.dart';

class TodoVM extends StateNotifier<TodoState> with LocatorMixin {
  TodoVM() : super(const TodoState.loading());

  var rand;
  @override
  void initState() async {
    super.initState();

    rand = new Random();
    await Future<void>.delayed(const Duration(seconds: 3));

    state = TodoState(
      todos: [
        Todo(
            id: rand.nextInt(100).toString(),
            title: 'hello',
            subtitle: "3am in the moring"),
        Todo(
            id: rand.nextInt(100).toString(),
            title: 'sup',
            subtitle: "usually i dont do this"),
        Todo(
            id: rand.nextInt(100).toString(),
            title: 'hi',
            subtitle: "hello how are ypu"),
      ],
    );
  }

  void add(String title, String subtitle) {
    final currentState = state;
    if (currentState is TodoStateData) {
      final todos = currentState.todos.toList()
        ..add(
          Todo(id: rand.nextInt(100).toString(), title: title),
        );
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
    }
  }
}
