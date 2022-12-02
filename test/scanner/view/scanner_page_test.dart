import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/scanner/bloc/scanner_bloc.dart';
import 'package:lifegoals/scanner/bloc/scanner_event.dart';
import 'package:lifegoals/scanner/bloc/scanner_state.dart';
import 'package:lifegoals/scanner/view/scanner_page.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../helpers/routing.dart';

class MockScannerBloc extends MockBloc<ScannerEvent, ScannerState>
    implements ScannerBloc {}

void main() {
  setUpAll(configureDependencies);

  tearDownAll(getIt.reset);

  // See example from weather app sample
  // https://github.com/felangel/bloc/blob/master/examples/flutter_weather/test/weather/view/weather_page_test.dart
  group('test', () {
    late ScannerBloc bloc;

    setUp(() {
      bloc = MockScannerBloc();
    });

    testWidgets('code found', (tester) async {
      when(() => bloc.state).thenReturn(const Found('123'));

      await tester.pumpWidget(
        BlocProvider.value(
          value: bloc,
          child: const MaterialApp(home: ScannerView()),
        ),
      );

      expect(find.text('123'), findsOneWidget);
    });
  });

  group(
    'ScannerPage',
    () {
      testWidgets('renders ScannerView', (tester) async {
        await tester.pumpApp(const ScannerPage());

        // if scanner is found from widget tree we have managed to build screen
        expect(find.byType(MobileScanner), findsOneWidget);
      });

      testWidgets('code is not shown before barcode is read', (tester) async {
        final ScannerBloc mockScannerBloc = MockScannerBloc();

        // Stub the state stream
        whenListen(
          mockScannerBloc,
          Stream<ScannerState>.fromIterable([const Inactive()]),
          initialState: const Inactive(),
        );

        final provider =
            BlocProvider<ScannerBloc>(create: (_) => mockScannerBloc);

        await tester.pumpAppWithProvider(
          const ScannerView(),
          provider,
        );

        await tester.pumpAndSettle();
        expect(find.text('N/A'), findsOneWidget);
      });

      testWidgets('code is shown when barcode is read', (tester) async {
        final ScannerBloc mockScannerBloc = MockScannerBloc();

        when(() => mockScannerBloc.state).thenReturn(const Found('123'));

        await tester.pumpAppWithProvider(
          const ScannerView(),
          BlocProvider<ScannerBloc>(
            create: (_) => mockScannerBloc,
          ),
        );

        await tester.pumpAndSettle();

        expect(find.text('123'), findsOneWidget);
      });
    },
    //skip: true,
  );

  group('ScannerPageRouting', () {
    testWidgets('is redirected when back button is tapped', (tester) async {
      final mockGoRouter = MockGoRouter();

      await tester.pumpMockRouterApp(const ScannerPage(), mockGoRouter);

      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.pumpAndSettle();

      verify(() => mockGoRouter.go(Routes.home)).called(1);
      verifyNever(() => mockGoRouter.go(Routes.scanner));
    });
  });
}
