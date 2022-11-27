// coverage:ignore-file

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lifegoals/core/navigation.dart';

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
        final user = state.user;
        if (user != null) {
          _showVerifyEmailMessage(context, user);
        }
        context.go(Routes.home);
      }),
      AuthStateChangeAction<UserCreated>((context, state) {
        final user = state.credential.user;
        if (user != null) {
          user.updateDisplayName(user.email!.split('@')[0]);
          _showVerifyEmailMessage(context, user);
        }
        context.go(Routes.home);
      }),
    ],
  );
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
      SignedOutAction((context) => context.go(Routes.home)),
    ],
  );
}
