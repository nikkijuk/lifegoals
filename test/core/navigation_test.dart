// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/navigation.dart';

void main() {
  group('navigation', () {
    test(
      'check if routes are valid',
      () async {
        for (final route
            in router().routeConfiguration.routes.cast<GoRoute>()) {
          expect(route.path, isNotNull);
          expect(route.builder, isNotNull);
        }
      },
    );
  });
}
