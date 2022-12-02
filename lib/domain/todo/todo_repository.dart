import 'dart:async';

import 'package:lifegoals/domain/todo/todo.dart';

abstract class TodoRepository {
  Future<void> addTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);

  Stream<Iterable<Todo>> todos();

  Future<void> updateTodo(Todo todo);
}
