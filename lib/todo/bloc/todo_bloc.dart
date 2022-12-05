import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/todo/bloc/todo_event.dart';
import 'package:lifegoals/todo/bloc/todo_state.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this._todoRepository) : super(const Uninitialized()) {
    on<Subscribe>(_subscribe);
    on<Refresh>(_refresh);
    on<Add>(_add);
    on<Update>(_update);
    on<Remove>(_remove);
  }
  final TodoRepository _todoRepository;
  StreamSubscription<Iterable<Todo>>? subscription;

  Future<FutureOr<void>> _subscribe(
    Subscribe event,
    Emitter<TodoState> emit,
  ) async {
    // subscribe can be currently done multiple times, so ..
    //await subscription?.cancel();
    subscription = _todoRepository.todos().listen((event) {
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
    _todoRepository.addTodo(event.todo);
  }

  FutureOr<void> _update(Update event, Emitter<TodoState> emit) async {
    await _todoRepository.updateTodo(event.todo);
  }

  FutureOr<void> _remove(Remove event, Emitter<TodoState> emit) async {
    await _todoRepository.deleteTodo(event.todo);
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
