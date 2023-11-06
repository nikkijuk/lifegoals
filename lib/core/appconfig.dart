// coverage:ignore-file

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:lifegoals/firebase_options.dart';
import 'package:logging/logging.dart';

void initLogging({Level level = Level.INFO}) {
  Logger.root.level = level;
  // ignore: avoid-ignoring-return-values
  Logger.root.onRecord.listen((record) {
    // TODO(jnikki): should be replaced with something more useful
    // ignore: avoid_print
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
}

Future<void> initFirebase() async {
  // ignore: avoid-ignoring-return-values
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
}
