import 'dart:async';

import 'package:bloc/bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationStatus> {
  AuthenticationBloc() : super(AuthenticationStatus.unknown) {
    on<LogIn>(_login);
    on<LogOut>(_logout);
  }

  FutureOr<void> _login(LogIn event, Emitter<AuthenticationStatus> emit) {
    emit(AuthenticationStatus.authenticated);
  }

  FutureOr<void> _logout(LogOut event, Emitter<AuthenticationStatus> emit) {
    emit(AuthenticationStatus.unauthenticated);
    emit(AuthenticationStatus.unknown);
  }
}

// Events

abstract class AuthenticationEvent {}

class LogIn extends AuthenticationEvent {}

class LogOut extends AuthenticationEvent {}

// States

enum AuthenticationStatus { unknown, authenticated, unauthenticated }
