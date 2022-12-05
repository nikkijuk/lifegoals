import 'dart:async';

import 'package:lifegoals/domain/todo/todo.dart';

abstract class TodoRepository {
  Stream<Iterable<Todo>> todos();

  Future<Todo?> findTodo(String id);

  Todo addTodo(Todo todo);

  Future<void> updateTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);
}
