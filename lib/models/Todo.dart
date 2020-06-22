import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'Todo.freezed.dart';
part 'Todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo(
      {@required String id,
      String title,
      String subtitle,
      @Default(false) bool isDone}) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_TodoToJson(this);
}
