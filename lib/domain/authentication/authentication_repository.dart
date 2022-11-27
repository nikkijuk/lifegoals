import 'package:lifegoals/domain/authentication/authenticated_user.dart';

abstract class AuthenticationRepository {
  Stream<AuthenticatedUser?> retrieveCurrentUser();

  Future<AuthenticatedUser?> signUp(String email, String password);

  Future<AuthenticatedUser?> signIn(String email, String password);

  Future<void> verifyEmail();

  Future<void> signOut();
}
