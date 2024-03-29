// ignore_for_file: avoid_print

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/data/todo/firebase_todo_repository.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:uuid/uuid.dart';

void main() {
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  });

  const uuid = Uuid();

  final todo = Todo(
    id: uuid.v4(),
    title: 'moderate',
    description: 'armageddon',
    isCompleted: false,
    dueDate: DateTime.now(),
  );

  late FirebaseFirestore instance;

  group(
    'TodoBloc',
    () {
      setUp(() async {
        instance = FakeFirebaseFirestore();
      });

      test('initial state is empty', () async {
        final repository = FirebaseTodoRepository(instance);
        final stream = repository.todos();
        StreamSubscription<Iterable<Todo>>? subscription;
        subscription = stream.listen((event) {
          expect(event.length, 0);
          subscription?.cancel();
        });
      });

      test('initial state is not empty', () async {
        final repository = FirebaseTodoRepository(instance);
        await repository.saveTodo(todo);
        final stream = repository.todos();
        StreamSubscription<Iterable<Todo>>? subscription;
        subscription = stream.listen((event) {
          event.toList().forEach((todo) => print('found $todo'));
          expect(event.length, 1);
          subscription?.cancel();
        });
      });

      test('add todos', () async {
        final pre = (instance as FakeFirebaseFirestore).dump();
        final repository = FirebaseTodoRepository(instance);
        await repository.saveTodo(todo);
        final post = (instance as FakeFirebaseFirestore).dump();
        expect(pre.contains('armageddon'), false);
        expect(post.contains('armageddon'), true);
        final foundTodo = await repository.findTodo(todo.id);
        print('found $foundTodo.');
        expect(foundTodo != null, true);
      });

      test('update todos', () async {
        final repository = FirebaseTodoRepository(instance);
        await repository.saveTodo(todo);
        final pre = (instance as FakeFirebaseFirestore).dump();
        await repository.saveTodo(todo.copyWith(description: 'bug'));
        final post = (instance as FakeFirebaseFirestore).dump();
        print('pre $pre');
        print('post $post');
        expect(pre.contains('armageddon'), true);
        expect(post.contains('armageddon'), false);
        expect(post.contains('bug'), true);
      });

      test('delete todos', () async {
        final repository = FirebaseTodoRepository(instance);
        await repository.saveTodo(todo);
        final pre = (instance as FakeFirebaseFirestore).dump();
        await repository.deleteTodo(todo);
        final foundTodo = await repository.findTodo(todo.id);
        print('found $foundTodo.');
        expect(foundTodo, null);
        print('pre $pre');
        expect(pre.contains('armageddon'), true);

        // dump doesn't seem to be in sync
        // object which can't be retrieved is still seen on dump
        //final post = (instance as FakeFirebaseFirestore).dump();
        //print('post $post');
        //expect (post.contains("armageddon"), false);
      });

      test('find todo', () async {
        final repository = FirebaseTodoRepository(instance);
        await repository.saveTodo(todo);
        final foundTodo = await repository.findTodo(todo.id);
        expect(foundTodo != null, true);
      });
    },
    //skip: true,
  );
}
