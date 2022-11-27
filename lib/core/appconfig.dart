// coverage:ignore-file

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

import 'package:lifegoals/firebase_options.dart';

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // tests never get this far.. even if tests should use this method
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);

  // It would be now possible for example in Bloc to listen changes
  // and notify UI when something changes

  /*
        FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true; // emit -> authenticated
      } else {
        _loggedIn = false; // emit -> unauthenticated, unknown
      }
      notifyListeners();
    });

     */
}
