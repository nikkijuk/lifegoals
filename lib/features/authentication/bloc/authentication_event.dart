import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lifegoals/domain/authentication/authenticated_user.dart';

part 'authentication_event.freezed.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login(AuthenticatedUser user) = LogIn;
  const factory AuthenticationEvent.logout() = LogOut;
}
