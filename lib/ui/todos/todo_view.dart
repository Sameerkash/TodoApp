import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/state/todo_state.dart';
import 'package:state_notifier_provider/ui/signup/auth_vm.dart';
import 'package:state_notifier_provider/ui/todos/todo_vm.dart';

part 'todo_view.g.dart';

class TodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.read<AuthVM>().logout();
            },
          )
        ],
      ),
      body: context.watch<TodoState>().when(
        (todos) {
          return ListTodos(todos);
        },
        empty: () {
          return Center(
            child: Text(
              'Try Adding a Todo!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
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
Widget listTodos(BuildContext context, List<Todo> todos) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return TodoTile(todos[index]);
    },
    itemCount: todos.length,
  );
}

@widget
Widget dialogs(BuildContext context, Todo todo) {
  return AlertDialog(
    title: Text("Get rid of this?"),
    content: Text("Dialog Content"),
    actions: [
      FlatButton(
          onPressed: () {
            context.read<TodoVM>().delete(todo);
            Navigator.pop(context);
          },
          child: Text("Yes, please!")),
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("No!"))
    ],
  );
}

@widget
Widget todoTile(BuildContext context, Todo todo) {
  // return Dismissible(
  //   background: Container(
  //     child: Icon(Icons.delete),
  //     alignment: AlignmentDirectional.centerStart,
  //     padding: EdgeInsets.symmetric(horizontal: 20),
  //     color: Colors.red,
  //   ),
  //   key: UniqueKey(),
  //   onDismissed: (DismissDirection direction) {
  //     if (direction == DismissDirection.startToEnd) {
  //       context.read<TodoVM>().delete(todo);
  //     } else {
  //       return;
  //     }
  //   },

  return InkWell(
    onLongPress: () {
      showDialog(
          context: context,
          builder: (context) {
            return Dialogs(todo);
          });
    },
    child: CheckboxListTile(
      onChanged: (_) {
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
      // ),
    ),
  );
}

@widget
Widget scrollsheet(BuildContext context) {
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
