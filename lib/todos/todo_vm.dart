import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/models/Todo.dart';

class TodoVM extends StateNotifier<TodoState> with LocatorMixin {
  TodoVM() : super(const TodoState.loading());



  void add(String title, String subtitle){
    
  }
}
