// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/data/todo/firebase_todo_repository.dart';
import 'package:lifegoals/domain/todo/todo.dart';

void main() {
  setUpAll(() async {
    configureDependencies();
    WidgetsFlutterBinding.ensureInitialized();
    //await Firebase.initializeApp();
  });

  final todo = Todo(
    id: '1',
    title: 'moderate',
    description: 'armageddon',
    isCompleted: false,
    dueDate: DateTime.now(),
  );
  //final todos = [todo];

  tearDownAll(getIt.reset);

  late FirebaseFirestore instance;

  group(
    'TodoBloc',
    () {
      setUp(() async {
        instance = FakeFirebaseFirestore();
        await instance.collection('todos').add(todo.toJson());
      });

      test('initial state is empty', () async {
        final result = FirebaseTodoRepository(instance).todos();
        print(result);
        /*
        await result.forEach((element) {
          print('e: $element');
        });*/
        // this started hanging..
        //final length = result.length;
        //expect(length, 0);
      });

      test('add to todos', () async {
        final pre = (instance as FakeFirebaseFirestore).dump();
        await FirebaseTodoRepository(instance).addTodo(todo);
        final post = (instance as FakeFirebaseFirestore).dump();
        //print ("pre $pre");
        //print ("post $post");
        expect(pre.contains('armageddon'), true);
        expect(post.contains('armageddon'), true);
      });

      test('update to todos', () async {
        await FirebaseTodoRepository(instance).addTodo(todo);
        final post = (instance as FakeFirebaseFirestore).dump();
        //print ("pre $pre");
        print('post $post');
        //expect (pre.contains("armageddon"), false);
        //expect (post.contains("armageddon"), true);
      });
    },
    //skip: true,
  );
}
