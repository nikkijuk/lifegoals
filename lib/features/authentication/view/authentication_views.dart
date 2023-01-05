// coverage:ignore-file

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';
import 'package:lifegoals/features/audit/bloc/audit_bloc.dart';
import 'package:lifegoals/features/audit/bloc/audit_event.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_event.dart';

// TODO(jnikki): this file would really need some tests

/// Sing in to app
Widget singInScreen(BuildContext context) {
  return SignInScreen(
    actions: [
      ForgotPasswordAction(
        (context, email) => context
            .goNamed(Routes.forgotPasswordName, params: {'email': email ?? ''}),
      ),
      AuthStateChangeAction<SignedIn>((context, state) {
        if (state.user != null) {
          final user = state.user!;
          _showVerifyEmailMessage(context, user);
          final authenticatedUser = _createAuthenticatedUser(user);
          BlocProvider.of<AuthenticationBloc>(context).add(
            LogIn(authenticatedUser),
          );
          BlocProvider.of<AuditBloc>(context)
              .add(Add('logIn', user.displayName!, authenticatedUser));
        }
        context.go(Routes.home);
      }),
      AuthStateChangeAction<UserCreated>((context, state) {
        final user = state.credential.user;
        if (user != null) {
          user.updateDisplayName(user.email!.split('@')[0]);
          _showVerifyEmailMessage(context, user);
          final authenticatedUser = _createAuthenticatedUser(user);
          BlocProvider.of<AuthenticationBloc>(context).add(
            LogIn(authenticatedUser),
          );
        }
        context.go(Routes.home);
      }),
    ],
  );
}

AuthenticatedUser _createAuthenticatedUser(User user) {
  final authenticatedUser = AuthenticatedUser(
    id: user.uid,
    name: user.displayName ?? '',
    email: user.email ?? '',
    photoUrl: user.photoURL ?? '',
  );
  return authenticatedUser;
}

void _showVerifyEmailMessage(BuildContext context, User user) {
  final verificationNeeded = !user.emailVerified;
  if (verificationNeeded) {
    user.sendEmailVerification();
    const snackBar = SnackBar(
      // TODO(jnikki): localize
      content: Text('Please check your email to verify your email address'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

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
