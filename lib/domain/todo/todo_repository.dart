import 'dart:async';

import 'package:lifegoals/domain/todo/todo.dart';

abstract class TodoRepository {
  Stream<Iterable<Todo>> todos();

  Todo findTodo(String id);

  Future<void> addTodo(Todo todo);

  Future<void> updateTodo(Todo todo);

  Future<void> deleteTodo(Todo todo);
}
