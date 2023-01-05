import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/domain/audit/audit_record.dart';
import 'package:lifegoals/domain/audit/audit_repository.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';
import 'package:lifegoals/features/audit/bloc/audit_bloc.dart';
import 'package:lifegoals/features/audit/bloc/audit_event.dart';
import 'package:lifegoals/features/audit/bloc/audit_state.dart';
import 'package:mocktail/mocktail.dart';

const authenticatedTestUser = AuthenticatedUser(
  id: 'id1',
  name: 'user1',
  email: 'email1',
  photoUrl: 'photo1',
);

class MockAuditRepository extends Mock implements AuditRepository {}

class AuditFake extends Fake implements AuditRecord {}

void main() {
  setUpAll(() {
    registerFallbackValue(AuditFake());
  });

  late AuditRepository mockRepository;

  group(
    'AuditBloc',
    () {
      setUp(() {
        mockRepository = MockAuditRepository();
        when(() => mockRepository.save(any<AuditRecord>()))
            .thenAnswer((_) async {});
      });

      test('initial state is not initialized', () {
        expect(
          AuditBloc(mockRepository).state,
          equals(const Empty()),
        );
      });

      blocTest<AuditBloc, AuditState>(
        'emits [] when [Add] happens}',
        build: () => AuditBloc(mockRepository),
        act: (bloc) =>
            bloc.add(const Add('<data>', '<desc>', authenticatedTestUser)),
        expect: () => [isA<Added>()],
      );
    },
    //skip: true,
  );
}
