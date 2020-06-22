// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ListTodos extends StatelessWidget {
  const ListTodos(this.todos, {Key key}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext _context) => listTodos(_context, todos);
}

class Dialogs extends StatelessWidget {
  const Dialogs(this.todo, {Key key}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext _context) => dialogs(_context, todo);
}

class TodoTile extends StatelessWidget {
  const TodoTile(this.todo, {Key key}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext _context) => todoTile(_context, todo);
}

class Scrollsheet extends StatelessWidget {
  const Scrollsheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => scrollsheet(_context);
}

class TodoForm extends HookWidget {
  const TodoForm(this.controller, {Key key}) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext _context) => todoForm(_context, controller);
}
