import 'dart:async';

import 'package:lifegoals/domain/audit/audit_record.dart';

// ignore: one_member_abstracts
abstract class AuditRepository {
  Future<void> save(AuditRecord record);
}
