import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_event.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_state.dart';
import 'package:lifegoals/features/counter/cubit/counter_cubit.dart';
import 'package:lifegoals/features/counter/view/counter_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';
import '../../../helpers/routing.dart';

const authenticatedUser = AuthenticatedUser(
  id: 'id1',
  name: 'user1',
  email: 'email1',
  photoUrl: 'photo1',
);

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

class MockAuthencationBloc
    extends MockBloc<AuthenticationEvent, AuthenticationState>
    implements AuthenticationBloc {}

void main() {
  group(
    'CounterPageRouting',
    () {
      testWidgets('renders CounterPage via Router as home screen',
          (tester) async {
        await tester.pumpRealRouterApp(testRouter());
        expect(find.byType(CounterView), findsOneWidget);
        expect(find.byType(BackButton), findsNothing);
      });

      testWidgets('is redirected when camera button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(
          const CounterPage(),
          mockGoRouter,
        );

        await tester.tap(find.byIcon(Icons.camera));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.scanner)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      testWidgets('is redirected when todos button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(
          const CounterPage(),
          mockGoRouter,
        );

        await tester.tap(find.byIcon(Icons.task));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.todos)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      testWidgets('is redirected when about button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(
          const CounterPage(),
          mockGoRouter,
        );

        await tester.tap(find.byIcon(Icons.info));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.about)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      testWidgets('is redirected when login button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(
          const CounterPage(),
          mockGoRouter,
        );

        await tester.tap(find.byIcon(Icons.login));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.login)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.home));
      });

      testWidgets('is redirected when profile button is tapped',
          (tester) async {
        final mockGoRouter = MockGoRouter();

        final mockAuthenticationBloc = MockAuthencationBloc();

        // TODO(jnikki): handling of initial state is blurry

        // Stub the state stream
        whenListen(
          mockAuthenticationBloc,
          Stream.fromIterable([const Authenticated(authenticatedUser)]),
          initialState: const Authenticated(authenticatedUser),
        );

        await tester.pumpMockRouterAppWithProvider(
          const CounterPage(),
          mockGoRouter,
          BlocProvider<AuthenticationBloc>.value(value: mockAuthenticationBloc),
        );

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
