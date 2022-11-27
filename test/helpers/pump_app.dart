import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/appconfig.dart';
import 'package:lifegoals/l10n/l10n.dart';

import 'routing.dart';

extension PumpApp on WidgetTester {
  /// pumpApp can be used when routing is not needed in test
  Future<void> pumpApp(Widget widget) {
    initFirebase();

    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}

extension PumpRealRouterApp on WidgetTester {
  /// pumpRealRouterApp can be used when real routing is needed in test
  Future<void> pumpRealRouterApp(GoRouter router) {
    initFirebase();

    return pumpWidget(
      MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}

extension PumpMockRouterApp on WidgetTester {
  /// pumpMockRouterApp can be used when mocked routing is needed in test
  Future<void> pumpMockRouterApp(Widget widget, MockGoRouter mockGoRouter) {
    initFirebase();

    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: MockGoRouterProvider(goRouter: mockGoRouter, child: widget),
      ),
    );
  }
}
