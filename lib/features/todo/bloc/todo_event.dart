import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lifegoals/domain/todo/todo.dart';

part 'todo_event.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.subscribe() = Subscribe;
  const factory TodoEvent.refresh(List<Todo> todos) = Refresh;
  const factory TodoEvent.add(Todo todo) = Add;
  const factory TodoEvent.update(Todo todo) = Update;
  const factory TodoEvent.remove(Todo todo) = Remove;
}
