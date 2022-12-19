import 'package:flutter/cupertino.dart';
import 'package:lifegoals/app/app.dart';
import 'package:lifegoals/bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  bootstrap(() => const App());
}
