import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';

class FirebaseTodoRepository implements TodoRepository {
  final todoCollection = FirebaseFirestore.instance.collection('todos');

  @override
  Future<void> addTodo(Todo todo) {
    return todoCollection.add(todo.toJson());
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    return todoCollection.doc(todo.id).delete();
  }

  @override
  Stream<Iterable<Todo>> todos() {
    final snapshots = todoCollection.snapshots();
    return snapshots.map((event) {
      return event.docs.map((e) => Todo.fromJson(e.data()));
    });
  }

  @override
  Future<void> updateTodo(Todo update) {
    return todoCollection.doc(update.id).update(update.toJson());
  }
}
