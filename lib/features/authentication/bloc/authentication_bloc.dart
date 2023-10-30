import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_event.dart';
import 'package:lifegoals/features/authentication/bloc/authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const Unknown()) {
    on<LogIn>(_login);
    on<LogOut>(_logout);
  }

  FutureOr<void> _login(LogIn event, Emitter<AuthenticationState> emit) {
    state.maybeWhen(
      unknown: () => emit(Authenticated(event.user)),
      orElse: () {
        // TODO(jnikki): need to implement.
      }, // coverage:ignore-line
    );
  }

  FutureOr<void> _logout(LogOut event, Emitter<AuthenticationState> emit) {
    state.maybeWhen(
      authenticated: (AuthenticatedUser user) {
        emit(const Unauthenticated());
        emit(const Unknown());
      },
      orElse: () {
        // TODO(jnikki): need to implement.
      }, // coverage:ignore-line
    );
  }
}
