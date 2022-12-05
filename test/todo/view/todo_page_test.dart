import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/todo/bloc/todo_bloc.dart';
import 'package:lifegoals/todo/bloc/todo_event.dart';
import 'package:lifegoals/todo/bloc/todo_state.dart';
import 'package:lifegoals/todo/view/todos_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

final todo = Todo(
  id: '1',
  title: 'joy division',
  description: 'isolation',
  isCompleted: false,
  dueDate: DateTime.now(),
);
final todo2 = Todo(
  id: '2',
  title: 'bauhaus',
  description: 'in the flat field',
  isCompleted: true,
  dueDate: DateTime.now(),
);
final todo3 = Todo(
  id: '3',
  title: '',
  description: '',
  isCompleted: true,
  dueDate: DateTime.now(),
);
final todos = [todo, todo2];

class MockTodoRepository extends Mock implements TodoRepository {}

class MockTodoBloc extends MockBloc<TodoEvent, TodoState> implements TodoBloc {}

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
  });

  tearDownAll(getIt.reset);

  group('TodoPage', () {
    setUp(() {});

    testWidgets('renders empty TodoView', (tester) async {
      final TodoBloc mockTodoBloc = MockTodoBloc();

      when(() => mockTodoBloc.state).thenReturn(const Uninitialized());

      final provider = BlocProvider<TodoBloc>(create: (_) => mockTodoBloc);

      await tester.pumpAppWithProvider(const TodosView(), provider);

      expect(find.byType(FloatingActionButton), findsOneWidget);
    });

    testWidgets('renders loading TodoView', (tester) async {
      final TodoBloc mockTodoBloc = MockTodoBloc();

      when(() => mockTodoBloc.state).thenReturn(const Loading());

      final provider = BlocProvider<TodoBloc>(create: (_) => mockTodoBloc);

      await tester.pumpAppWithProvider(const TodosView(), provider);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders error TodoView', (tester) async {
      final TodoBloc mockTodoBloc = MockTodoBloc();

      when(() => mockTodoBloc.state).thenReturn(const Error());

      final provider = BlocProvider<TodoBloc>(create: (_) => mockTodoBloc);

      await tester.pumpAppWithProvider(const TodosView(), provider);

      expect(find.text('An error has occurred!'), findsOneWidget);
    });

    testWidgets('renders filled TodoView', (tester) async {
      final TodoBloc mockTodoBloc = MockTodoBloc();

      // Stub the state stream
      whenListen(
        mockTodoBloc,
        Stream<TodoState>.fromIterable([Active(todos)]),
        initialState: const Uninitialized(),
      );

      final provider = BlocProvider<TodoBloc>(create: (_) => mockTodoBloc);

      await tester.pumpAppWithProvider(const TodosView(), provider);

      await tester.tap(find.byIcon(Icons.download));
      await tester.pumpAndSettle();

      expect(find.text('isolation'), findsOneWidget);
    });
  });
}
