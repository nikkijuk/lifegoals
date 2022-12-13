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
  Stream<Iterable<Todo>> todos() {
    final snapshots = collection.snapshots();

    // TODO(jnikki): do we need to dispose this stream
    // Returns subscription to stream
    return snapshots.map((event) {
      return event.docs.map((e) => e.data());
    });
  }

  @override
  Todo addTodo(Todo todo) {
    // Returns a `DocumentReference` with the provided path.
    // If no [path] is provided, an auto-generated ID is used.
    final ref = collection.doc();

    final newTodo = todo.copyWith(id: ref.id);

    // Sets data on the document, overwriting any existing data.
    ref.set(newTodo);

    // TODO(jnikki): are we messing our life & exception handling here?
    // we return directly updated todo, but at that moment update operation
    // might not have been executed yet as set returns  Future<void>
    return newTodo;
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    final ref = collection.doc(todo.id);

    // Deletes the current document from the collection.
    return ref.delete();
  }

  @override
  Future<void> updateTodo(Todo todo) {
    final ref = collection.doc(todo.id);

    // Sets data on the document, overwriting any existing data.
    return ref.set(todo);
  }

  @override
  Future<Todo?> findTodo(String id) async {
    final ref = collection.doc(id);

    // Reads the document referenced
    final snapshot = await ref.get();
    return snapshot.data();
  }
}
