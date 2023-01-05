import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lifegoals/domain/audit/audit_record.dart';
import 'package:lifegoals/domain/audit/audit_repository.dart';

class FirebaseAuditRepository implements AuditRepository {
  FirebaseAuditRepository(this._instance) {
    // Create an instance of a collection using withConverter
    // https://github.com/firebase/flutterfire/issues/7264
    _collection = _instance.collection('audit').withConverter<AuditRecord>(
          fromFirestore: (snapshot, _) =>
              AuditRecord.fromJson(snapshot.data()!),
          toFirestore: (auditRecord, _) => auditRecord.toJson(),
        );
  }

  late final FirebaseFirestore _instance;
  late final CollectionReference<AuditRecord> _collection;

  @override
  Future<void> save(AuditRecord record) {
    // generates automatically id without semantic meaning
    return _collection.add(record);
  }
}
