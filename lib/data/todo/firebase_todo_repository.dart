import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';

@injectable
class FirebaseTodoRepository implements TodoRepository {
  FirebaseTodoRepository(this._instance) {
    todoCollection = _instance.collection('todos');
  }

  late final FirebaseFirestore _instance; // = FirebaseFirestore.instance;
  late CollectionReference<Map<String, dynamic>> todoCollection;

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
