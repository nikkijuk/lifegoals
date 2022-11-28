// coverage:ignore-file

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:lifegoals/firebase_options.dart';

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
}

// That didn't quite work out
/*
AuthenticationBloc initializeAuthenticationBloc() {
  final authenticationBloc = GetIt.instance.get<AuthenticationBloc>();

  FirebaseAuth.instance.userChanges().listen((user) {
    if (user != null) {

      print("stream > login");
      authenticationBloc.add(LogIn()); // user has authenticated
    } else {
      print("stream > logout");
      authenticationBloc.add(LogOut()); // user is on way out
    }
  });

  print("initialized authentication");

  return authenticationBloc;
}
*/
