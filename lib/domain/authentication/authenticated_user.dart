import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';

@freezed
class AuthenticatedUser with _$AuthenticatedUser {
  const factory AuthenticatedUser({
    required String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phoneNumber,
    @Default('') String photoUrl,
  }) = _AuthenticatedUser;
}
