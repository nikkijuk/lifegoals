import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';

@freezed
abstract class AuthenticatedUser with _$AuthenticatedUser {
  const factory AuthenticatedUser({required String name}) = _AuthenticatedUser;
}
