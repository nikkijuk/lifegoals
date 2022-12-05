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
final todos = [todo];

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

    testWidgets('renders TodoView', (tester) async {
      final TodoBloc mockTodoBloc = MockTodoBloc();

      //when(() => mockTodoBloc.state).thenReturn(Active(todos));

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
