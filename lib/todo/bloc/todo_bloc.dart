import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/todo/bloc/todo_event.dart';
import 'package:lifegoals/todo/bloc/todo_state.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this._todoRepository) : super(const TodoState.empty()) {
    on<Load>(_load);
    on<Send>(_send);
  }
  final TodoRepository _todoRepository;

  Future<FutureOr<void>> _load(Load event, Emitter<TodoState> emit) async {
    _todoRepository.todos().listen((event) {
      add(Send(event.toList()));
    });
  }

  Future<FutureOr<void>> _send(Send event, Emitter<TodoState> emit) async {
    emit(Loaded(event.todos));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
