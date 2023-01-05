// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/data/audit/firebase_audit_repository.dart';
import 'package:lifegoals/domain/audit/audit_record.dart';
import 'package:uuid/uuid.dart';

void main() {
  setUpAll(() async {
    WidgetsFlutterBinding.ensureInitialized();
  });

  const uuid = Uuid();

  final audit = AuditRecord(
    userId: uuid.v4(),
    data: '<data>',
    description: '<desc>',
    clientTs: DateTime.now(),
  );

  late FirebaseFirestore instance;

  group(
    'TodoBloc',
    () {
      setUp(() async {
        instance = FakeFirebaseFirestore();
      });

      test('add audit record', () async {
        final pre = (instance as FakeFirebaseFirestore).dump();
        final repository = FirebaseAuditRepository(instance);
        await repository.save(audit);
        final post = (instance as FakeFirebaseFirestore).dump();
        expect(pre.contains('<data>'), false);
        expect(post.contains('<data>'), true);
      });
    },
    //skip: true,
  );
}
