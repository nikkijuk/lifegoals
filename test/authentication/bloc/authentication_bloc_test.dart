// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lifegoals/authentication/bloc/authentication_bloc.dart';

void main() {
  group('AuthenticationBloc', () {
    test('initial state is unknown user', () {
      expect(AuthenticationBloc().state, equals(AuthenticationStatus.unknown));
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
      expect: () =>
          [AuthenticationStatus.unauthenticated, AuthenticationStatus.unknown],
    );
  });
}
