// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscribeCopyWith<$Res> {
  factory _$$SubscribeCopyWith(
          _$Subscribe value, $Res Function(_$Subscribe) then) =
      __$$SubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$Subscribe>
    implements _$$SubscribeCopyWith<$Res> {
  __$$SubscribeCopyWithImpl(
      _$Subscribe _value, $Res Function(_$Subscribe) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Subscribe implements Subscribe {
  const _$Subscribe();

  @override
  String toString() {
    return 'TodoEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Subscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class Subscribe implements TodoEvent {
  const factory Subscribe() = _$Subscribe;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$Refresh>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$Refresh(
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh(final List<Todo> todos) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoEvent.refresh(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Refresh &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshCopyWith<_$Refresh> get copyWith =>
      __$$RefreshCopyWithImpl<_$Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) {
    return refresh(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) {
    return refresh?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements TodoEvent {
  const factory Refresh(final List<Todo> todos) = _$Refresh;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$$RefreshCopyWith<_$Refresh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCopyWith<$Res> {
  factory _$$AddCopyWith(_$Add value, $Res Function(_$Add) then) =
      __$$AddCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res, _$Add>
    implements _$$AddCopyWith<$Res> {
  __$$AddCopyWithImpl(_$Add _value, $Res Function(_$Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$Add(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Add implements Add {
  const _$Add(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.add(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Add &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCopyWith<_$Add> get copyWith =>
      __$$AddCopyWithImpl<_$Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) {
    return add(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) {
    return add?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements TodoEvent {
  const factory Add(final Todo todo) = _$Add;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$AddCopyWith<_$Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$Update(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.update(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) {
    return update(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) {
    return update?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements TodoEvent {
  const factory Update(final Todo todo) = _$Update;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCopyWith<$Res> {
  factory _$$RemoveCopyWith(_$Remove value, $Res Function(_$Remove) then) =
      __$$RemoveCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$RemoveCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$Remove>
    implements _$$RemoveCopyWith<$Res> {
  __$$RemoveCopyWithImpl(_$Remove _value, $Res Function(_$Remove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$Remove(
      null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Remove implements Remove {
  const _$Remove(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.remove(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Remove &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCopyWith<_$Remove> get copyWith =>
      __$$RemoveCopyWithImpl<_$Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(List<Todo> todos) refresh,
    required TResult Function(Todo todo) add,
    required TResult Function(Todo todo) update,
    required TResult Function(Todo todo) remove,
  }) {
    return remove(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(List<Todo> todos)? refresh,
    TResult? Function(Todo todo)? add,
    TResult? Function(Todo todo)? update,
    TResult? Function(Todo todo)? remove,
  }) {
    return remove?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(List<Todo> todos)? refresh,
    TResult Function(Todo todo)? add,
    TResult Function(Todo todo)? update,
    TResult Function(Todo todo)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscribe value) subscribe,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Add value) add,
    required TResult Function(Update value) update,
    required TResult Function(Remove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscribe value)? subscribe,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Add value)? add,
    TResult? Function(Update value)? update,
    TResult? Function(Remove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscribe value)? subscribe,
    TResult Function(Refresh value)? refresh,
    TResult Function(Add value)? add,
    TResult Function(Update value)? update,
    TResult Function(Remove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class Remove implements TodoEvent {
  const factory Remove(final Todo todo) = _$Remove;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$RemoveCopyWith<_$Remove> get copyWith =>
      throw _privateConstructorUsedError;
}
