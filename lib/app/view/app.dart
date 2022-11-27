// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/firebase_options.dart';
import 'package:lifegoals/l10n/l10n.dart';

import 'package:lifegoals/core/appconfig.dart';

class App extends StatelessWidget {
  const App({super.key});

//  bool _loggedIn = false;
//  bool get loggedIn => _loggedIn;

  @override
  Widget build(BuildContext context) {
    initFirebase();

    return MaterialApp.router(
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
  }
}
