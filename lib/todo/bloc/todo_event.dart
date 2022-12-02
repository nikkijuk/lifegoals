import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lifegoals/domain/todo/todo.dart';

part 'todo_event.freezed.dart';

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.load() = Load;
  const factory TodoEvent.send(List<Todo> todos) = Send;
}
