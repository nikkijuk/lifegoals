// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuditRecord _$AuditRecordFromJson(Map<String, dynamic> json) {
  return _AuditRecord.fromJson(json);
}

/// @nodoc
mixin _$AuditRecord {
  String get userId => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; // NOTE: clientTs field is "String" in firebase
// I simply didn't manage to get right types to function
  @ServerDateTimeConverter()
  DateTime get clientTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditRecordCopyWith<AuditRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditRecordCopyWith<$Res> {
  factory $AuditRecordCopyWith(
          AuditRecord value, $Res Function(AuditRecord) then) =
      _$AuditRecordCopyWithImpl<$Res, AuditRecord>;
  @useResult
  $Res call(
      {String userId,
      String data,
      String description,
      @ServerDateTimeConverter() DateTime clientTs});
}

/// @nodoc
class _$AuditRecordCopyWithImpl<$Res, $Val extends AuditRecord>
    implements $AuditRecordCopyWith<$Res> {
  _$AuditRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? data = null,
    Object? description = null,
    Object? clientTs = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      clientTs: null == clientTs
          ? _value.clientTs
          : clientTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuditRecordCopyWith<$Res>
    implements $AuditRecordCopyWith<$Res> {
  factory _$$_AuditRecordCopyWith(
          _$_AuditRecord value, $Res Function(_$_AuditRecord) then) =
      __$$_AuditRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String data,
      String description,
      @ServerDateTimeConverter() DateTime clientTs});
}

/// @nodoc
class __$$_AuditRecordCopyWithImpl<$Res>
    extends _$AuditRecordCopyWithImpl<$Res, _$_AuditRecord>
    implements _$$_AuditRecordCopyWith<$Res> {
  __$$_AuditRecordCopyWithImpl(
      _$_AuditRecord _value, $Res Function(_$_AuditRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? data = null,
    Object? description = null,
    Object? clientTs = null,
  }) {
    return _then(_$_AuditRecord(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      clientTs: null == clientTs
          ? _value.clientTs
          : clientTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuditRecord implements _AuditRecord {
  const _$_AuditRecord(
      {required this.userId,
      required this.data,
      required this.description,
      @ServerDateTimeConverter() required this.clientTs});

  factory _$_AuditRecord.fromJson(Map<String, dynamic> json) =>
      _$$_AuditRecordFromJson(json);

  @override
  final String userId;
  @override
  final String data;
  @override
  final String description;
// NOTE: clientTs field is "String" in firebase
// I simply didn't manage to get right types to function
  @override
  @ServerDateTimeConverter()
  final DateTime clientTs;

  @override
  String toString() {
    return 'AuditRecord(userId: $userId, data: $data, description: $description, clientTs: $clientTs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuditRecord &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.clientTs, clientTs) ||
                other.clientTs == clientTs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, data, description, clientTs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuditRecordCopyWith<_$_AuditRecord> get copyWith =>
      __$$_AuditRecordCopyWithImpl<_$_AuditRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuditRecordToJson(
      this,
    );
  }
}

abstract class _AuditRecord implements AuditRecord {
  const factory _AuditRecord(
          {required final String userId,
          required final String data,
          required final String description,
          @ServerDateTimeConverter() required final DateTime clientTs}) =
      _$_AuditRecord;

  factory _AuditRecord.fromJson(Map<String, dynamic> json) =
      _$_AuditRecord.fromJson;

  @override
  String get userId;
  @override
  String get data;
  @override
  String get description;
  @override // NOTE: clientTs field is "String" in firebase
// I simply didn't manage to get right types to function
  @ServerDateTimeConverter()
  DateTime get clientTs;
  @override
  @JsonKey(ignore: true)
  _$$_AuditRecordCopyWith<_$_AuditRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
