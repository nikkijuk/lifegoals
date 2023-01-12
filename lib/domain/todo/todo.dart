// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lifegoals/core/jsontools.dart';

part 'todo.freezed.dart';
part 'todo.g.dart'; // needed when type is serializable

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String title,
    required String description,
    required bool isCompleted,

    // NOTE: dueDate field is "String" in firebase
    // I simply didn't manage to get right types to function
    @ServerDateTimeConverter() required DateTime dueDate,
  }) = _Todo;

  // This code is not used directly, for which reason code coverage test fails
  // set ignore to whole file as formatting breaks this line to two and ..
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  // Todo complete() => copyWith(isCompleted: true);
  // Todo incomplete() => copyWith(isCompleted: false);
}
