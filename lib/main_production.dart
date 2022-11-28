// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:lifegoals/app/app.dart';
import 'package:lifegoals/bootstrap.dart';
import 'package:lifegoals/core/injection.dart';

void main() {
  // TODO(jnikki): should be used in other targets also
  configureDependencies();

  bootstrap(() => const App());
}
