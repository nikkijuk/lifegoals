import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifegoals/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/core/injection.dart';

void main() {
  setUpAll(configureDependencies);

  tearDownAll(getIt.reset);

  group(
    'AuthenticationBloc',
    () {
      test('initial state is unknown user', () {
        expect(
          AuthenticationBloc().state,
          equals(AuthenticationStatus.unknown),
        );
      });

      blocTest<AuthenticationBloc, AuthenticationStatus>(
        'emits [1] when increment is called',
        build: AuthenticationBloc.new,
        act: (bloc) => bloc.add(LogIn()),
        expect: () => [AuthenticationStatus.authenticated],
      );

      blocTest<AuthenticationBloc, AuthenticationStatus>(
        'emits [-1] when decrement is called',
        build: AuthenticationBloc.new,
        act: (bloc) => bloc.add(LogOut()),
        expect: () => [
          AuthenticationStatus.unauthenticated,
          AuthenticationStatus.unknown
        ],
      );
    },
    //skip: true,
  );
}
