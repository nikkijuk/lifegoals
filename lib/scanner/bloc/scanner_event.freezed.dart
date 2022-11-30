// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scanner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readFailed,
    required TResult Function(String code) readSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readFailed,
    TResult? Function(String code)? readSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readFailed,
    TResult Function(String code)? readSucceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadFailed value) readFailed,
    required TResult Function(ReadSucceeded value) readSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadFailed value)? readFailed,
    TResult? Function(ReadSucceeded value)? readSucceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadFailed value)? readFailed,
    TResult Function(ReadSucceeded value)? readSucceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerEventCopyWith<$Res> {
  factory $ScannerEventCopyWith(
          ScannerEvent value, $Res Function(ScannerEvent) then) =
      _$ScannerEventCopyWithImpl<$Res, ScannerEvent>;
}

/// @nodoc
class _$ScannerEventCopyWithImpl<$Res, $Val extends ScannerEvent>
    implements $ScannerEventCopyWith<$Res> {
  _$ScannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReadFailedCopyWith<$Res> {
  factory _$$ReadFailedCopyWith(
          _$ReadFailed value, $Res Function(_$ReadFailed) then) =
      __$$ReadFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadFailedCopyWithImpl<$Res>
    extends _$ScannerEventCopyWithImpl<$Res, _$ReadFailed>
    implements _$$ReadFailedCopyWith<$Res> {
  __$$ReadFailedCopyWithImpl(
      _$ReadFailed _value, $Res Function(_$ReadFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadFailed implements ReadFailed {
  const _$ReadFailed();

  @override
  String toString() {
    return 'ScannerEvent.readFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readFailed,
    required TResult Function(String code) readSucceeded,
  }) {
    return readFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readFailed,
    TResult? Function(String code)? readSucceeded,
  }) {
    return readFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readFailed,
    TResult Function(String code)? readSucceeded,
    required TResult orElse(),
  }) {
    if (readFailed != null) {
      return readFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadFailed value) readFailed,
    required TResult Function(ReadSucceeded value) readSucceeded,
  }) {
    return readFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadFailed value)? readFailed,
    TResult? Function(ReadSucceeded value)? readSucceeded,
  }) {
    return readFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadFailed value)? readFailed,
    TResult Function(ReadSucceeded value)? readSucceeded,
    required TResult orElse(),
  }) {
    if (readFailed != null) {
      return readFailed(this);
    }
    return orElse();
  }
}

abstract class ReadFailed implements ScannerEvent {
  const factory ReadFailed() = _$ReadFailed;
}

/// @nodoc
abstract class _$$ReadSucceededCopyWith<$Res> {
  factory _$$ReadSucceededCopyWith(
          _$ReadSucceeded value, $Res Function(_$ReadSucceeded) then) =
      __$$ReadSucceededCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ReadSucceededCopyWithImpl<$Res>
    extends _$ScannerEventCopyWithImpl<$Res, _$ReadSucceeded>
    implements _$$ReadSucceededCopyWith<$Res> {
  __$$ReadSucceededCopyWithImpl(
      _$ReadSucceeded _value, $Res Function(_$ReadSucceeded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$ReadSucceeded(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadSucceeded implements ReadSucceeded {
  const _$ReadSucceeded(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ScannerEvent.readSucceeded(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadSucceeded &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadSucceededCopyWith<_$ReadSucceeded> get copyWith =>
      __$$ReadSucceededCopyWithImpl<_$ReadSucceeded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readFailed,
    required TResult Function(String code) readSucceeded,
  }) {
    return readSucceeded(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? readFailed,
    TResult? Function(String code)? readSucceeded,
  }) {
    return readSucceeded?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readFailed,
    TResult Function(String code)? readSucceeded,
    required TResult orElse(),
  }) {
    if (readSucceeded != null) {
      return readSucceeded(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadFailed value) readFailed,
    required TResult Function(ReadSucceeded value) readSucceeded,
  }) {
    return readSucceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadFailed value)? readFailed,
    TResult? Function(ReadSucceeded value)? readSucceeded,
  }) {
    return readSucceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadFailed value)? readFailed,
    TResult Function(ReadSucceeded value)? readSucceeded,
    required TResult orElse(),
  }) {
    if (readSucceeded != null) {
      return readSucceeded(this);
    }
    return orElse();
  }
}

abstract class ReadSucceeded implements ScannerEvent {
  const factory ReadSucceeded(final String code) = _$ReadSucceeded;

  String get code;
  @JsonKey(ignore: true)
  _$$ReadSucceededCopyWith<_$ReadSucceeded> get copyWith =>
      throw _privateConstructorUsedError;
}
