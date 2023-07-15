import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/appconfig.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/l10n/app_localizations.dart';

import 'routing.dart';

extension PumpApp on WidgetTester {
  /// pumpApp can be used when routing is not needed in test
  Future<void> pumpApp(Widget widget) {
    initFirebase();

    final app = MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );

    final fullApp = MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
      ],
      child: app,
    );

    return pumpWidget(fullApp);
  }

  /// pumpApp can be used when routing is not needed in test
  Future<void> pumpAppWithProvider(Widget widget, BlocProvider provider) {
    initFirebase();

    final app = MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    );

    final fullApp = MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
        provider,
      ],
      child: app,
    );

    return pumpWidget(fullApp);
  }
}

extension PumpRealRouterApp on WidgetTester {
  /// pumpRealRouterApp can be used when real routing is needed in test
  Future<void> pumpRealRouterApp(GoRouter router) {
    initFirebase();

    final app = MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      // Required by Go Router 8.X
      routeInformationProvider: router.routeInformationProvider,
    );

    final fullApp = MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
      ],
      child: app,
    );

    return pumpWidget(fullApp);
  }
}

extension PumpMockRouterApp on WidgetTester {
  /// pumpMockRouterApp can be used when mocked routing is needed in test
  /// Mocking authentication bloc allows changing easily user state
  Future<void> pumpMockRouterApp(
    Widget widget,
    MockGoRouter mockGoRouter,
  ) {
    initFirebase();

    final app = MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MockGoRouterProvider(goRouter: mockGoRouter, child: widget),
    );

    final fullApp = MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
      ],
      child: app,
    );

    return pumpWidget(fullApp);
  }

  Future<void> pumpMockRouterAppWithProvider(
    Widget widget,
    MockGoRouter mockGoRouter,
    BlocProvider provider,
  ) {
    initFirebase();

    final app = MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MockGoRouterProvider(goRouter: mockGoRouter, child: widget),
    );

    final fullApp = MultiBlocProvider(
      providers: [
        provider,
      ],
      child: app,
    );

    return pumpWidget(fullApp);
  }
}
