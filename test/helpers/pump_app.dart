// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/l10n/l10n.dart';

import 'routing.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}

String getRouterKey(String route) {
  return 'key_$route';
}

extension PumpRealRouterApp on WidgetTester {
  Future<void> pumpRealRouterApp(GoRouter router) {
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

/*
extension PumpRouterApp on WidgetTester {
  Future<void> pumpRouterApp(Widget widget) {
    const initialLocation = '/_initial';

    final router = GoRouter(
      initialLocation: initialLocation,
      routes: [
        GoRoute(
          path: initialLocation,
          builder: (context, state) => widget,
        ),
        ...Routes().props.map(
              (e) => GoRoute(
                path: e! as String,
                builder: (context, state) => Container(
                  key: Key(
                    getRouterKey(e as String),
                  ),
                ),
              ),
            )
      ],
    );

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

 */

extension PumpMockRouterApp on WidgetTester {
  Future<void> pumpMockRouterApp(Widget widget, MockGoRouter mockGoRouter) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: MockGoRouterProvider(goRouter: mockGoRouter, child: widget),
      ),
    );
  }
}
