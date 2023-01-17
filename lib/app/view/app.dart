// coverage:ignore-file

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lifegoals/core/appconfig.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/data/audit/firebase_audit_repository.dart';
import 'package:lifegoals/data/todo/firebase_todo_repository.dart';
import 'package:lifegoals/domain/audit/audit_repository.dart';
import 'package:lifegoals/domain/todo/todo_repository.dart';
import 'package:lifegoals/features/audit/bloc/audit_bloc.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/l10n/l10n.dart';
import 'package:logging/logging.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    initFirebase();
    initLogging(level: Level.ALL);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TodoRepository>(
          create: (_) => FirebaseTodoRepository(FirebaseFirestore.instance),
        ),
        RepositoryProvider<AuditRepository>(
          create: (_) => FirebaseAuditRepository(FirebaseFirestore.instance),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(create: (_) => AuthenticationBloc()),
          // TODO(jnikki): audit blocs repository injection is hardcoded
          /*
        BlocProvider<AuditBloc>(
            create: (_) => AuditBloc(context.read<AuditRepository>())),

         */
          BlocProvider<AuditBloc>(
            create: (_) =>
                AuditBloc(FirebaseAuditRepository(FirebaseFirestore.instance)),
          ),
        ],
        child: const RealApp(),
      ),
    );
  }
}

// TODO(jnikki): To get context propagated right I needed class
class RealApp extends StatelessWidget {
  const RealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router(context),
    );
  }
}
