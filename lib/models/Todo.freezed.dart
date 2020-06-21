// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'Todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(
      {@required String id,
      String title,
      String subtitle,
      bool isDone = false}) {
    return _Todo(
      id: id,
      title: title,
      subtitle: subtitle,
      isDone: isDone,
    );
  }
}

// ignore: unused_element
const $Todo = _$TodoTearOff();

mixin _$Todo {
  String get id;
  String get title;
  String get subtitle;
  bool get isDone;

  Map<String, dynamic> toJson();
  $TodoCopyWith<Todo> get copyWith;
}

abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({String id, String title, String subtitle, bool isDone});
}

class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object isDone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
    ));
  }
}

abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String subtitle, bool isDone});
}

class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subtitle = freezed,
    Object isDone = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subtitle: subtitle == freezed ? _value.subtitle : subtitle as String,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
    ));
  }
}

@JsonSerializable()
class _$_Todo with DiagnosticableTreeMixin implements _Todo {
  const _$_Todo(
      {@required this.id, this.title, this.subtitle, this.isDone = false})
      : assert(id != null),
        assert(isDone != null);

  factory _$_Todo.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(id: $id, title: $title, subtitle: $subtitle, isDone: $isDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('isDone', isDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(isDone);

  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {@required String id,
      String title,
      String subtitle,
      bool isDone}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  bool get isDone;
  @override
  _$TodoCopyWith<_Todo> get copyWith;
}

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

class _$TodoStateData with DiagnosticableTreeMixin implements TodoStateData {
  const _$TodoStateData({this.todos = const <Todo>[]}) : assert(todos != null);

  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState(todos: $todos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState'))
      ..add(DiagnosticsProperty('todos', todos));
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

class _$TodoStateLoading
    with DiagnosticableTreeMixin
    implements TodoStateLoading {
  const _$TodoStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoState.loading'));
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

class _$TodoStateEmpty with DiagnosticableTreeMixin implements TodoStateEmpty {
  const _$TodoStateEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoState.empty'));
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
