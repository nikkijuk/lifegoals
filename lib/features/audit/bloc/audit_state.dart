import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lifegoals/domain/audit/audit_record.dart';

part 'audit_state.freezed.dart';

@freezed
class AuditState with _$AuditState {
  const factory AuditState.empty() = Empty;
  const factory AuditState.added(AuditRecord record) = Added;
}
