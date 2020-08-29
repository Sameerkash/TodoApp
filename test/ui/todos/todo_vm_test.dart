import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_provider/models/Todo.dart';
import 'package:state_notifier_provider/services/local_storage.dart';
import 'package:state_notifier_provider/state/auth_state.dart';
import 'package:state_notifier_provider/state/todo_state.dart';
import 'package:state_notifier_provider/ui/todos/todo_vm.dart';

class MockLocalStorage extends Mock implements LocalStorage {}

void main() {
  MockLocalStorage mockLocalStorage;
  TodoVM todoVM;

  // setUp(() {
    mockLocalStorage = MockLocalStorage();
    todoVM = TodoVM()..debugMockDependency<LocalStorage>(mockLocalStorage);
  // });

  group('TODO CRUD operations ', () {
    final List<Todo> addTodo = [];
    final todo =
        Todo(id: "UI7anS3IUx43mSQHs97", title: "title", subtitle: "subtitle");
    test('Should update state when addTodo is called ', () async {
      // todoVM.add("title", "subtitle");

      expect(todoVM.debugState, TodoState.loading());

      // when(todoVM.getTodosFromdb()).thenAnswer((_) async {
      //   return <Todo>[];
      // });
      todoVM.getTodosFromdb();
      // expect(todoVM.debugState, TodoState.empty());
      // verify(mockLocalStorage.getTodos());
    });
  });
}
