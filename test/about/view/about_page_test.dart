// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/about/view/about_page.dart';
import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';
import '../../helpers/routing.dart';

void main() {
  setUpAll(configureDependencies);

  tearDownAll(getIt.reset);

  group('AboutPage', () {
    testWidgets('renders AboutView', (tester) async {
      await tester.pumpApp(const AboutPage());
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    group('AboutPageRouting', () {
      testWidgets('is redirected when button is tapped', (tester) async {
        final mockGoRouter = MockGoRouter();

        await tester.pumpMockRouterApp(const AboutPage(), mockGoRouter);

        await tester.tap(find.byIcon(Icons.arrow_back));
        await tester.pumpAndSettle();

        verify(() => mockGoRouter.go(Routes.home)).called(1);
        verifyNever(() => mockGoRouter.go(Routes.about));
      });
    });
  });
}
