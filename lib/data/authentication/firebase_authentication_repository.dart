// coverage:ignore-file

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationRepository {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> retrieveCurrentUser() {
    return auth.authStateChanges();
  }

  Future<UserCredential?> signUp(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      await verifyEmail();
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  Future<UserCredential?> signIn(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message);
    }
  }

  Future<void> verifyEmail() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      return user.sendEmailVerification();
    }
  }

  Future<void> signOut() async {
    return FirebaseAuth.instance.signOut();
  }
}
