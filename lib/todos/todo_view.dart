import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'todo_view.g.dart';

class TodoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos App"),
      ),
      body: todo(),
    );
  }
}

@widget
Widget todo() {
  return CheckboxListTile(
    onChanged: (value) {},
    value: false,
    title: Text('Workout 💪'),
    subtitle: Text("workout from 7-8"),
  );
}
