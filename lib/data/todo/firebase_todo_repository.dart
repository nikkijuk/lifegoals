import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';

class FirebaseTodoRepository implements TodoRepository {
  FirebaseTodoRepository(this._instance) {
    // Create an instance of a collection withConverter.
    // there might be some limitations on this, but ..
    // https://github.com/firebase/flutterfire/issues/7264
    _collection = _instance.collection('todos').withConverter<Todo>(
          fromFirestore: (snapshot, _) => Todo.fromJson(snapshot.data()!),
          toFirestore: (todo, _) => todo.toJson(),
        );
  }

  late final FirebaseFirestore _instance;
  late final CollectionReference<Todo> _collection;

  @override
  Stream<Iterable<Todo>> todos() {
    final snapshots = _collection.snapshots();

    // TODO(jnikki): do we need to dispose this stream
    // Returns subscription to stream
    return snapshots.map((event) {
      return event.docs.map((e) => e.data());
    });
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    final ref = _collection.doc(todo.id);

    // Deletes the current document from the collection.
    return ref.delete();
  }

  @override
  Future<void> saveTodo(Todo todo) {
    final ref = _collection.doc(todo.id);

    // Sets data on the document, overwriting any existing data.
    return ref.set(todo);
  }

  @override
  Future<Todo?> findTodo(String id) async {
    final ref = _collection.doc(id);

    // Reads the document referenced
    final snapshot = await ref.get();
    return snapshot.data();
  }
}
