import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lifegoals/domain/todo/todo.dart';

part 'todo_state.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.empty() = Empty;
  const factory TodoState.error() = Error;
  const factory TodoState.loading() = Loading;
  const factory TodoState.loaded(List<Todo> todos) = Loaded;
}
