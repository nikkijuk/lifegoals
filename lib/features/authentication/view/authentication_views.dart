// coverage:ignore-file

import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_event.dart';

/// User has forgotten password
Widget forgotPasswordScreen(BuildContext context, GoRouterState state) {
  final email = state.params['email'] ?? '';
  return ForgotPasswordScreen(email: email, headerMaxExtent: 200);
}

/// User profile
Widget profileScreen(BuildContext context) {
  return ProfileScreen(
    providers: const [],
    actions: [
      SignedOutAction(
        (context) {
          BlocProvider.of<AuthenticationBloc>(context).add(const LogOut());
          context.go(Routes.home);
        },
      ),
    ],
  );
}
