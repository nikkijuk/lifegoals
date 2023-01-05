// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audit_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuditRecord _$$_AuditRecordFromJson(Map<String, dynamic> json) =>
    _$_AuditRecord(
      userId: json['userId'] as String,
      data: json['data'] as String,
      description: json['description'] as String,
      clientTs: DateTime.parse(json['clientTs'] as String),
    );

Map<String, dynamic> _$$_AuditRecordToJson(_$_AuditRecord instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'data': instance.data,
      'description': instance.description,
      'clientTs': instance.clientTs.toIso8601String(),
    };
