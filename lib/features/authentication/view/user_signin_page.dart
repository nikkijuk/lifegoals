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

class UserSignInPage extends StatelessWidget {
  const UserSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserSignInView();
  }
}

class UserSignInView extends StatelessWidget {
  const UserSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    //final l10n = context.l10n;
    return SignInScreen(
      actions: [
        ForgotPasswordAction(
          (context, email) => context.go('${Routes.forgotPasswordName}$email'),
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
