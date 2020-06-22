
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/Todo.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(<Todo>[]) List<Todo> todos,
  }) = TodoStateData;
  const factory TodoState.loading() = TodoStateLoading;
  const factory TodoState.empty() = TodoStateEmpty;
}
