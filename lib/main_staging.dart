import 'package:flutter/cupertino.dart';
import 'package:lifegoals/app/app.dart';
import 'package:lifegoals/bootstrap.dart';
import 'package:lifegoals/core/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  bootstrap(() => const App());
}
