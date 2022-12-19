import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/todo/bloc/todo_bloc.dart';
import 'package:lifegoals/todo/bloc/todo_event.dart';
import 'package:lifegoals/todo/bloc/todo_state.dart';
import 'package:mocktail/mocktail.dart';

final todo = Todo(
  id: '1',
  title: 'title',
  description: 'description',
  isCompleted: false,
  dueDate: DateTime.now(),
);

final todos = [todo];

class MockTodoRepository extends Mock implements TodoRepository {}

class TodoFake extends Fake implements Todo {}

void main() {
  setUpAll(() {
    configureDependencies();
    registerFallbackValue(TodoFake());
  });

  late TodoRepository mockRepository;

  tearDownAll(getIt.reset);

  group(
    'TodoBloc',
    () {
      setUp(() {
        mockRepository = MockTodoRepository();
        when(mockRepository.todos).thenAnswer(
          (_) => Stream<Iterable<Todo>>.fromIterable([todos]),
        );
        when(() => mockRepository.deleteTodo(any<Todo>()))
            .thenAnswer((_) async {});
        when(() => mockRepository.saveTodo(any<Todo>()))
            .thenAnswer((_) async {});
      });

      test('initial state is not initialized', () {
        expect(
          TodoBloc(mockRepository).state,
          equals(const Uninitialized()),
        );
      });

      blocTest<TodoBloc, TodoState>(
        'emits [Active] when [Subscribe] happens}',
        build: () => TodoBloc(mockRepository),
        act: (bloc) => bloc.add(const Subscribe()),
        expect: () => [Active(todos)],
      );

      blocTest<TodoBloc, TodoState>(
        'emits [] when [Add] happens}',
        build: () => TodoBloc(mockRepository),
        act: (bloc) => bloc.add(Add(todo)),
        expect: () => <TodoState>[],
      );

      blocTest<TodoBloc, TodoState>(
        'emits [] when [Remove] happens}',
        build: () => TodoBloc(mockRepository),
        act: (bloc) => bloc.add(Remove(todo)),
        expect: () => <TodoState>[],
      );

      blocTest<TodoBloc, TodoState>(
        'emits [] when [Update] happens}',
        build: () => TodoBloc(mockRepository),
        act: (bloc) => bloc.add(Update(todo)),
        expect: () => <TodoState>[],
      );
    },
    //skip: true,
  );
}
