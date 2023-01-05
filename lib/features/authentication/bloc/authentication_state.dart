import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';

part 'authentication_state.freezed.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;
  const factory AuthenticationState.authenticated(AuthenticatedUser user) =
      Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
