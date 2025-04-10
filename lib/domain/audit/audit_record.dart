// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lifegoals/core/server_date_time_converter.dart';

part 'audit_record.freezed.dart';
part 'audit_record.g.dart'; // needed when type is serializable

  @freezed
  class AuditRecord with _$AuditRecord {
    const factory AuditRecord({
      required String userId,
      required String data,
      required String description,

      // NOTE: clientTs field is "String" in firebase
      // I simply didn't manage to get right types to function
      @ServerDateTimeConverter() required DateTime clientTs,
    }) = _AuditRecord;

    // This code is not used directly, for which reason code coverage test fails
    // set ignore to whole file as formatting breaks this line to two and ..
    factory AuditRecord.fromJson(Map<String, dynamic> json) =>
        _$AuditRecordFromJson(json);
  }
