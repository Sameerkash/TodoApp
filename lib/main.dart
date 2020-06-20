import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:provider/provider.dart';
import 'package:state_notifier_provider/services/ilocal_storage.dart';
import 'package:state_notifier_provider/todos/todo_view.dart';
import 'package:state_notifier_provider/todos/todo_vm.dart';

import 'models/Todo.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<ILocalStorage>(
            create: (_) => LocalStorage(),
          ),
          StateNotifierProvider<TodoVM, TodoState>(create: (_) => TodoVM())
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const fabPadding = EdgeInsets.all(5);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColorDark: Colors.black,
        // primaryColor: Colors.grey,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black, fontSize: 20),
        ),
        selectedRowColor: Colors.green,
      ),
      title: 'Material App',
      home:

          // floatingActionButton: Column(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: <Widget>[
          //     Padding(
          //       padding: fabPadding,
          //       child: FloatingActionButton(
          //         child: Icon(Icons.add),

          //         ///Increment Counter
          //         onPressed: () {
          //           context.read<Counter>().increment();
          //         },
          //       ),
          //     ),
          //     Padding(
          //       padding: fabPadding,
          //       child: FloatingActionButton(
          //           child: Icon(Icons.remove),

          //           ///Decrement Counter
          //           onPressed: () {
          //             context.read<Counter>().decrement();
          //           }),
          //     ),
          //   ],
          // ),
          TodoView(),
    );
  }
}

// class _Body extends StatelessWidget {
//   const _Body({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text(
//           context.watch<int>().toString(),
//           style: Theme.of(context).textTheme.headline4,
//         ),
//       ),
//     );
//   }
// }
