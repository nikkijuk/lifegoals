import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lifegoals/authentication/bloc/authentication_event.dart';
import 'package:lifegoals/authentication/bloc/authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const Unknown()) {
    on<LogIn>(_login);
    on<LogOut>(_logout);
  }

  FutureOr<void> _login(LogIn event, Emitter<AuthenticationState> emit) {
    emit(const Authenticated());
  }

  FutureOr<void> _logout(LogOut event, Emitter<AuthenticationState> emit) {
    emit(const Unauthenticated());
    emit(const Unknown());
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
