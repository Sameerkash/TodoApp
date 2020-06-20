import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:state_notifier_provider/hooks/scroll_controller_hook.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/ui/todos/todo_vm.dart';

part 'todo_view.g.dart';

class TodoView extends StatefulWidget {
  @override
  _TodoViewState createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: ListTodos(),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        heroTag: "fab1",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scrollsheet(),
            ),
          );
        },
        child: Icon(
          Icons.edit,
          size: 30,
        ),
      ),
    );
  }
}

@widget
Widget listTodos(BuildContext context) {
  return context.watch<TodoState>().when(
    (todos) {
      return todos.isEmpty
          ? Center(
              child: Text(
                'Try Adding a Todo!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return TodoTile(todos[index]);
              },
              itemCount: todos.length,
            );
    },
    loading: () => Center(child: CircularProgressIndicator()),
  );
}

@widget
Widget todoTile(BuildContext context, Todo todo) {
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (DismissDirection direction) {
      if (direction == DismissDirection.endToStart)
        context.read<TodoVM>().delete(todo);
    },
    child: CheckboxListTile(
      onChanged: (value) {
        context.read<TodoVM>().toggle(todo);
      },
      value: todo.isDone,
      title: todo.isDone
          ? Text(todo.title,
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
              ))
          : Text(todo.title),
      subtitle: todo.isDone
          ? Text(todo.subtitle,
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
              ))
          : Text(todo.subtitle),
    ),
  );
}

@hwidget
Widget scrollsheet(BuildContext context) {
  final scroll = useScrollController();

  return Material(
    child: DraggableScrollableSheet(
      minChildSize: 0.7,
      initialChildSize: 0.75,
      maxChildSize: 0.9,
      builder: (context, scroll) {
        return TodoForm(scroll);
      },
    ),
  );
}

@hwidget
Widget todoForm(BuildContext context, ScrollController controller) {
  final textController1 = useTextEditingController();
  final textController2 = useTextEditingController();

  return SingleChildScrollView(
    controller: controller,
    child: Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Add a Todo 🖊",
            style: TextStyle(fontSize: 35),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'What do you want to do?'),
            controller: textController1,
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Maybe describe a bit?'),
            controller: textController2,
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            splashColor: Colors.white,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            shape: CircleBorder(),
            child: Icon(
              Icons.done,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              String title = textController1.value.text.trim();
              String subtitle = textController2.value.text.trim();
              context.read<TodoVM>().add(title, subtitle);

              textController1.clear();
              textController2.clear();
              Navigator.pop(context);
            },
          )
        ],
      ),
    ),
  );
}
