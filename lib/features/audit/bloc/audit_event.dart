import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';

part 'audit_event.freezed.dart';

@freezed
abstract class AuditEvent with _$AuditEvent {
  const factory AuditEvent.add(
    String data,
    String description,
    AuthenticatedUser? user,
  ) = Add;
}
