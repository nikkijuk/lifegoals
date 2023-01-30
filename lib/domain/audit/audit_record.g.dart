// GENERATED CODE - DO NOT MODIFY BY HAND

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
