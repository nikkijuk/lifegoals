// coverage:ignore-file

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifegoals/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/core/appconfig.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/data/todo/firebase_todo_repository.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/l10n/l10n.dart';
import 'package:logging/logging.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    initFirebase();
    initLogging(level: Level.ALL);

    final app = MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router(),
    );

    final blocProviders = MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
      ],
      child: app,
    );

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TodoRepository>(
          create: (_) => FirebaseTodoRepository(FirebaseFirestore.instance),
        ),
      ],
      child: blocProviders,
    );
  }
}
