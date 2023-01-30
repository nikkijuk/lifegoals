// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? active,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Active value) active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(Error value)? error,
    TResult? Function(Loading value)? loading,
    TResult? Function(Active value)? active,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Active value)? active,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UninitializedCopyWith<$Res> {
  factory _$$UninitializedCopyWith(
          _$Uninitialized value, $Res Function(_$Uninitialized) then) =
      __$$UninitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UninitializedCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$Uninitialized>
    implements _$$UninitializedCopyWith<$Res> {
  __$$UninitializedCopyWithImpl(
      _$Uninitialized _value, $Res Function(_$Uninitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Uninitialized implements Uninitialized {
  const _$Uninitialized();

  @override
  String toString() {
    return 'TodoState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) active,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? active,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? active,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Active value) active,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(Error value)? error,
    TResult? Function(Loading value)? loading,
    TResult? Function(Active value)? active,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Active value)? active,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class Uninitialized implements TodoState {
  const factory Uninitialized() = _$Uninitialized;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'TodoState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) active,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? active,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? active,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Active value) active,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(Error value)? error,
    TResult? Function(Loading value)? loading,
    TResult? Function(Active value)? active,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Active value)? active,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TodoState {
  const factory Error() = _$Error;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) active,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? active,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? active,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Active value) active,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(Error value)? error,
    TResult? Function(Loading value)? loading,
    TResult? Function(Active value)? active,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Active value)? active,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TodoState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ActiveCopyWith<$Res> {
  factory _$$ActiveCopyWith(_$Active value, $Res Function(_$Active) then) =
      __$$ActiveCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$ActiveCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$Active>
    implements _$$ActiveCopyWith<$Res> {
  __$$ActiveCopyWithImpl(_$Active _value, $Res Function(_$Active) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$Active(
      null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$Active implements Active {
  const _$Active(final List<Todo> todos) : _todos = todos;

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoState.active(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Active &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveCopyWith<_$Active> get copyWith =>
      __$$ActiveCopyWithImpl<_$Active>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) active,
  }) {
    return active(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function(List<Todo> todos)? active,
  }) {
    return active?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? active,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(Error value) error,
    required TResult Function(Loading value) loading,
    required TResult Function(Active value) active,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(Error value)? error,
    TResult? Function(Loading value)? loading,
    TResult? Function(Active value)? active,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(Error value)? error,
    TResult Function(Loading value)? loading,
    TResult Function(Active value)? active,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class Active implements TodoState {
  const factory Active(final List<Todo> todos) = _$Active;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$$ActiveCopyWith<_$Active> get copyWith =>
      throw _privateConstructorUsedError;
}
