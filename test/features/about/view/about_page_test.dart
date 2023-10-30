import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/core/routes.dart';
import 'package:lifegoals/features/about/view/about_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';
import '../../../helpers/routing.dart';

void main() {
  group('AboutPage', () {
    testWidgets('renders AboutView', (tester) async {
      await tester.pumpApp(const AboutPage());
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    group('AboutPageRouting', () {
      testWidgets('is redirected when back button is tapped', (tester) async {
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
