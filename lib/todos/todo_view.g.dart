// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_view.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ListTodos extends StatelessWidget {
  const ListTodos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => listTodos(_context);
}

class TodoTile extends StatelessWidget {
  const TodoTile(this.todo, {Key key}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext _context) => todoTile(_context, todo);
}

class Scrollsheet extends HookWidget {
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
