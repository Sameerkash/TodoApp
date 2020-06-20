import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:provider/provider.dart';
import 'package:state_notifier_provider/services/local_storage.dart';
import 'package:state_notifier_provider/ui/todos/todo_view.dart';
import 'package:state_notifier_provider/ui/todos/todo_vm.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'models/Todo.dart';

void main() => runApp(
      // DevicePreview(
      //   builder: (context) =>
         MultiProvider(
          providers: [
            Provider(
              create: (_) => LocalStorage(),
            ),
            StateNotifierProvider<TodoVM, TodoState>(create: (_) => TodoVM())
          ],
          child: MyApp(),
        ),
      // ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const fabPadding = EdgeInsets.all(5);

    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(500, name: TABLET),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
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
