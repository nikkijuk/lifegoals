import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/features/todo/bloc/todo_event.dart';
import 'package:lifegoals/features/todo/bloc/todo_state.dart';
import 'package:uuid/uuid.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this._todoRepository) : super(const Uninitialized()) {
    on<Subscribe>(_subscribe);
    on<Refresh>(_refresh);
    on<Add>(_add);
    on<Update>(_update);
    on<Remove>(_remove);
  }
  final TodoRepository _todoRepository;
  StreamSubscription<Iterable<Todo>>? _subscription;
  final _uuid = const Uuid();

  Future<FutureOr<void>> _subscribe(
    Subscribe event,
    Emitter<TodoState> emit,
  ) async {
    // subscribe can be currently done multiple times,
    // so previous stream subscription needs to be
    // canceled before creating new to handle resources efficiently
    if (_subscription != null) {
      await _subscription?.cancel(); // coverage:ignore-line
    }
    _subscription = _todoRepository.todos().listen((event) {
      add(Refresh(event.toList()));
    });
  }

  Future<FutureOr<void>> _refresh(
    Refresh event,
    Emitter<TodoState> emit,
  ) async {
    emit(Active(event.todos));
  }

  FutureOr<void> _add(Add event, Emitter<TodoState> emit) async {
    final id = _uuid.v4();
    final todo = event.todo.copyWith(id: id);

    await _todoRepository.saveTodo(todo);
  }

  FutureOr<void> _update(Update event, Emitter<TodoState> emit) async {
    await _todoRepository.saveTodo(event.todo);
  }

  FutureOr<void> _remove(Remove event, Emitter<TodoState> emit) async {
    await _todoRepository.deleteTodo(event.todo);
  }

  @override
  Future<void> close() {
    // close resource subscription when bloc is not needed anymore
    _subscription?.cancel();

    return super.close();
  }
}
