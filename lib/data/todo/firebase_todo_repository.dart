import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';

@injectable
class FirebaseTodoRepository implements TodoRepository {
  FirebaseTodoRepository(this._instance) {
    // Create an instance of a collection withConverter.
    // there might be some limitations on this, but ..
    // https://github.com/firebase/flutterfire/issues/7264
    collection = _instance.collection('todos').withConverter<Todo>(
          fromFirestore: (snapshot, _) => Todo.fromJson(snapshot.data()!),
          toFirestore: (todo, _) => todo.toJson(),
        );
  }

  late final FirebaseFirestore _instance;
  late CollectionReference<Todo> collection;

  @override
  Future<void> addTodo(Todo todo) {
    return collection.add(todo);
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    return collection.doc(todo.id).delete();
  }

  @override
  Stream<Iterable<Todo>> todos() {
    final snapshots = collection.snapshots();
    return snapshots.map((event) {
      return event.docs.map((e) => e.data());
    });
  }

  @override
  Future<void> updateTodo(Todo todo) {
    return collection.doc(todo.id).set(todo);
  }

  @override
  Todo findTodo(String id) {
    // TODO(jnikki): implement findTodo
    throw UnimplementedError();
  }
}
