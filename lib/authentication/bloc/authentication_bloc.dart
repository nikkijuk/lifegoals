import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationStatus> {
  AuthenticationBloc() : super(AuthenticationStatus.unknown) {
    on<LogIn>(_login);
    on<LogOut>(_logout);
  }

  //late StreamSubscription<User?> _authenticationStream;

  FutureOr<void> _login(LogIn event, Emitter<AuthenticationStatus> emit) {
    emit(AuthenticationStatus.authenticated);
  }

  FutureOr<void> _logout(LogOut event, Emitter<AuthenticationStatus> emit) {
    emit(AuthenticationStatus.unauthenticated);
    emit(AuthenticationStatus.unknown);
  }

  @override
  Future<void> close() {
    //_authenticationStream.cancel();
    return super.close();
  }
/*
  // Bloc should listen firebase changes and notify UI
  void _initFirebaseAuth() {
    // it is not clear to me if firebase init is idempotent
    //initFirebase();

    _authenticationStream = FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        add(LogIn()); // user has authenticated
      } else {
        add(LogOut()); // user has unauthenticated and is unknown
      }
    });
  }

 */

  // TODO(jnikki): taking this annotation in use crashes the whole stuff..
  //@PostConstruct()
  //void init() => _initFirebaseAuth();
}

// Events

abstract class AuthenticationEvent {}

class LogIn extends AuthenticationEvent {}

class LogOut extends AuthenticationEvent {}

// States

/*
abstract class AuthenticationStatus {}

class UnknownUser extends AuthenticationStatus {}

class KnownUser extends AuthenticationStatus {}

class LeavingUser extends AuthenticationStatus {}

 */

enum AuthenticationStatus { unknown, authenticated, unauthenticated }
