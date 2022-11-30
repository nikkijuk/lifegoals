import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifegoals/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/authentication/bloc/authentication_event.dart';
import 'package:lifegoals/authentication/bloc/authentication_state.dart';
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
          equals(const Unknown()),
        );
      });

      blocTest<AuthenticationBloc, AuthenticationState>(
        'emits [Authenticated] when [LoIn] happens}',
        build: AuthenticationBloc.new,
        act: (bloc) => bloc.add(const LogIn()),
        expect: () => [const Authenticated()],
      );

      blocTest<AuthenticationBloc, AuthenticationState>(
        'emits [Unauthenticated, Unknown] when [LogOut] happens}',
        build: AuthenticationBloc.new,
        act: (bloc) => bloc.add(const LogOut()),
        expect: () => [const Unauthenticated(), const Unknown()],
      );
    },
    //skip: true,
  );
}
