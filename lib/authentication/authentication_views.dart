import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lifegoals/core/navigation.dart';

/// Sing in to app
Widget singInScreen(BuildContext context) {
  return SignInScreen(
    actions: [
      ForgotPasswordAction(
        (context, email) => context
            .goNamed(Routes.forgotPasswordName, params: {'email': email ?? ''}),
      ),
      AuthStateChangeAction((context, state) {
        // damn, why should state ever be null when callback is called?
        if (state == null) {
          return;
        }
        // switch doesn't manage to do typecasts
        // result1: switch needs to operate on runtimetype
        // result2: inside case you need to do typecasting again
        switch (state.runtimeType) {
          case SignedIn:
            final s = state as SignedIn;
            final user = s.user;
            if (user == null) {
              break;
            }
            _showVerifyEmailMessage(context, user);
            break;
          case UserCreated:
            final s = state as UserCreated;
            final user = s.credential.user;
            if (user == null) {
              break;
            }
            user.updateDisplayName(user.email!.split('@')[0]);
            _showVerifyEmailMessage(context, user);
            break;
          default:
            break;
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
