// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$_$_TodoFromJson(Map<String, dynamic> json) {
  return _$_Todo(
    id: json['id'] as String,
    title: json['title'] as String,
    subtitle: json['subtitle'] as String,
    isDone: json['isDone'] as bool,
  );
}

Map<String, dynamic> _$_$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'isDone': instance.isDone,
    };
