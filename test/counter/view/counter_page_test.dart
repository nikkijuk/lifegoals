// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/counter/counter.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../helpers/routing.dart';

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
  setUpAll(configureDependencies);

  tearDownAll(getIt.reset);

  group(
    'CounterPageRouting',
    () {
      testWidgets('renders CounterPage via Router as home screen',
          (tester) async {
        await tester.pumpRealRouterApp(router());
        expect(find.byType(CounterView), findsOneWidget);
        expect(find.byType(BackButton), findsNothing);
      });

      testWidgets('is redirected when about button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(const CounterPage(), mockGoRouter);

        await tester.tap(find.byIcon(Icons.info));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.about)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      testWidgets('is redirected when login button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(const CounterPage(), mockGoRouter);

        await tester.tap(find.byIcon(Icons.login));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.login)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      // TODO(jnikki): this test should react on authentication state
      testWidgets('is redirected when profile button is tapped',
          (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(const CounterPage(), mockGoRouter);

        await tester.tap(find.byIcon(Icons.verified_user));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.profile)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });
    },
    //skip: true,
  );

  group(
    'CounterPage',
    () {
      testWidgets('renders CounterView', (tester) async {
        await tester.pumpApp(const CounterPage());
        expect(find.byType(CounterView), findsOneWidget);
      });
    },
    //skip: true,
  );

  group(
    'CounterView',
    () {
      late CounterCubit counterCubit;

      setUp(() {
        counterCubit = MockCounterCubit();
      });

      testWidgets('renders current count', (tester) async {
        const state = 42;
        when(() => counterCubit.state).thenReturn(state);
        await tester.pumpApp(
          BlocProvider.value(
            value: counterCubit,
            child: const CounterView(),
          ),
        );
        expect(find.text('$state'), findsOneWidget);
      });

      testWidgets('calls increment when increment button is tapped',
          (tester) async {
        when(() => counterCubit.state).thenReturn(0);
        when(() => counterCubit.increment()).thenReturn(null);
        await tester.pumpApp(
          BlocProvider.value(
            value: counterCubit,
            child: const CounterView(),
          ),
        );
        await tester.tap(find.byIcon(Icons.add));
        verify(() => counterCubit.increment()).called(1);
      });

      testWidgets('calls decrement when decrement button is tapped',
          (tester) async {
        when(() => counterCubit.state).thenReturn(0);
        when(() => counterCubit.decrement()).thenReturn(null);
        await tester.pumpApp(
          BlocProvider.value(
            value: counterCubit,
            child: const CounterView(),
          ),
        );
        await tester.tap(find.byIcon(Icons.remove));
        verify(() => counterCubit.decrement()).called(1);
      });
    },
    //skip: true,
  );
}
