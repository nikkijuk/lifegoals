import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifegoals/domain/todo/todo.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/features/todo/bloc/todo_bloc.dart';
import 'package:lifegoals/features/todo/bloc/todo_event.dart';
import 'package:lifegoals/features/todo/bloc/todo_state.dart';

// coverage:ignore-start
class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(context.read<TodoRepository>()),
      child: const TodosView(),
    );
  }
}
// coverage:ignore-end

class TodosView extends StatelessWidget {
  const TodosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Column(
        children: [
          const Divider(height: 2, color: Colors.grey),
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              return state.when(
                uninitialized: () => FloatingActionButton(
                  heroTag: 'load',
                  onPressed: () =>
                      context.read<TodoBloc>().add(const Subscribe()),
                  child: const Icon(Icons.download),
                ),
                error: _buildErrorWidget,
                loading: () => const Expanded(
                  child: Center(child: CircularProgressIndicator()),
                ),
                active: (todos) =>
                    _buildTodoListContainerWidget(context, todos),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTodoListContainerWidget(
    BuildContext context,
    List<Todo> todoList,
  ) {
    return Expanded(child: _buildTodoListWidget(context, todoList));
  }

  Widget _buildTodoListWidget(
    BuildContext _,
    List<Todo> todoList,
  ) {
    if (todoList.isEmpty) {
      return const Center(child: Text('No ToDo'));
    }

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemBuilder: (BuildContext context, int index) {
        return _buildTodoItemCardWidget(context, todoList[index]);
      },
      itemCount: todoList.length,
    );
  }

  Widget _buildTodoItemCardWidget(BuildContext context, Todo todo) {
    final themeData = Theme.of(context);

    return InkWell(
      onTap: () => {}, // coverage:ignore-line,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todo.title,
                      style: themeData.textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      //DateFormat('yyyy/MM/dd').format(todo.dueDate),
                      todo.dueDate.toString(),
                      style: themeData.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      todo.description.isEmpty
                          ? 'No Description'
                          : todo.description,
                      style: themeData.textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              if (todo.isCompleted)
                _buildCheckedIcon(context, todo)
              else
                _buildUncheckedIcon(context, todo),
            ],
          ),
        ),
      ), // coverage:ignore-line
    );
  }

  Widget _buildCheckedIcon(BuildContext _, Todo __) {
    return InkResponse(
      onTap: () => {}, // coverage:ignore-line
      splashColor: Colors.transparent,
      child: const Icon(Icons.done, size: 24, color: Colors.lightGreen),
    );
  }

  Widget _buildUncheckedIcon(BuildContext _, Todo __) {
    return InkResponse(
      onTap: () => {}, // coverage:ignore-line
      splashColor: Colors.transparent,
      child: const Icon(
        Icons.radio_button_off_rounded,
        size: 24,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildErrorWidget() {
    // TODO(jnikki): Localization
    return const Center(child: Text('An error has occurred!'));
  }
}
