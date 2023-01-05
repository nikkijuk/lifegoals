import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lifegoals/domain/audit/audit_record.dart';
import 'package:lifegoals/domain/audit/audit_repository.dart';

import 'package:lifegoals/features/audit/bloc/audit_event.dart';
import 'package:lifegoals/features/audit/bloc/audit_state.dart';

class AuditBloc extends Bloc<AuditEvent, AuditState> {
  AuditBloc(this._auditRepository) : super(const Empty()) {
    on<Add>(_add);
  }

  final AuditRepository _auditRepository;

  FutureOr<void> _add(Add event, Emitter<AuditState> emit) async {
    final userId = event.user?.id ?? '';
    final record = AuditRecord(
      userId: userId,
      data: event.data,
      description: event.description,
      clientTs: DateTime.now(),
    );

    await _auditRepository.save(record);
  }
}
