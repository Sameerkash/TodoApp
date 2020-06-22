// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  TodoStateData call({List<Todo> todos = const <Todo>[]}) {
    return TodoStateData(
      todos: todos,
    );
  }

  TodoStateLoading loading() {
    return const TodoStateLoading();
  }

  TodoStateEmpty empty() {
    return const TodoStateEmpty();
  }
}

// ignore: unused_element
const $TodoState = _$TodoStateTearOff();

mixin _$TodoState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Todo> todos), {
    @required Result loading(),
    @required Result empty(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Todo> todos), {
    Result loading(),
    Result empty(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TodoStateData value), {
    @required Result loading(TodoStateLoading value),
    @required Result empty(TodoStateEmpty value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TodoStateData value), {
    Result loading(TodoStateLoading value),
    Result empty(TodoStateEmpty value),
    @required Result orElse(),
  });
}

abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

abstract class $TodoStateDataCopyWith<$Res> {
  factory $TodoStateDataCopyWith(
          TodoStateData value, $Res Function(TodoStateData) then) =
      _$TodoStateDataCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

class _$TodoStateDataCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements $TodoStateDataCopyWith<$Res> {
  _$TodoStateDataCopyWithImpl(
      TodoStateData _value, $Res Function(TodoStateData) _then)
      : super(_value, (v) => _then(v as TodoStateData));

  @override
  TodoStateData get _value => super._value as TodoStateData;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(TodoStateData(
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

class _$TodoStateData implements TodoStateData {
  const _$TodoStateData({this.todos = const <Todo>[]}) : assert(todos != null);

  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoState(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodoStateData &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  $TodoStateDataCopyWith<TodoStateData> get copyWith =>
      _$TodoStateDataCopyWithImpl<TodoStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Todo> todos), {
    @required Result loading(),
    @required Result empty(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return $default(todos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Todo> todos), {
    Result loading(),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TodoStateData value), {
    @required Result loading(TodoStateLoading value),
    @required Result empty(TodoStateEmpty value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TodoStateData value), {
    Result loading(TodoStateLoading value),
    Result empty(TodoStateEmpty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TodoStateData implements TodoState {
  const factory TodoStateData({List<Todo> todos}) = _$TodoStateData;

  List<Todo> get todos;
  $TodoStateDataCopyWith<TodoStateData> get copyWith;
}

abstract class $TodoStateLoadingCopyWith<$Res> {
  factory $TodoStateLoadingCopyWith(
          TodoStateLoading value, $Res Function(TodoStateLoading) then) =
      _$TodoStateLoadingCopyWithImpl<$Res>;
}

class _$TodoStateLoadingCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements $TodoStateLoadingCopyWith<$Res> {
  _$TodoStateLoadingCopyWithImpl(
      TodoStateLoading _value, $Res Function(TodoStateLoading) _then)
      : super(_value, (v) => _then(v as TodoStateLoading));

  @override
  TodoStateLoading get _value => super._value as TodoStateLoading;
}

class _$TodoStateLoading implements TodoStateLoading {
  const _$TodoStateLoading();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Todo> todos), {
    @required Result loading(),
    @required Result empty(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Todo> todos), {
    Result loading(),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TodoStateData value), {
    @required Result loading(TodoStateLoading value),
    @required Result empty(TodoStateEmpty value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TodoStateData value), {
    Result loading(TodoStateLoading value),
    Result empty(TodoStateEmpty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoading implements TodoState {
  const factory TodoStateLoading() = _$TodoStateLoading;
}

abstract class $TodoStateEmptyCopyWith<$Res> {
  factory $TodoStateEmptyCopyWith(
          TodoStateEmpty value, $Res Function(TodoStateEmpty) then) =
      _$TodoStateEmptyCopyWithImpl<$Res>;
}

class _$TodoStateEmptyCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements $TodoStateEmptyCopyWith<$Res> {
  _$TodoStateEmptyCopyWithImpl(
      TodoStateEmpty _value, $Res Function(TodoStateEmpty) _then)
      : super(_value, (v) => _then(v as TodoStateEmpty));

  @override
  TodoStateEmpty get _value => super._value as TodoStateEmpty;
}

class _$TodoStateEmpty implements TodoStateEmpty {
  const _$TodoStateEmpty();

  @override
  String toString() {
    return 'TodoState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodoStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Todo> todos), {
    @required Result loading(),
    @required Result empty(),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Todo> todos), {
    Result loading(),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(TodoStateData value), {
    @required Result loading(TodoStateLoading value),
    @required Result empty(TodoStateEmpty value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(TodoStateData value), {
    Result loading(TodoStateLoading value),
    Result empty(TodoStateEmpty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class TodoStateEmpty implements TodoState {
  const factory TodoStateEmpty() = _$TodoStateEmpty;
}
