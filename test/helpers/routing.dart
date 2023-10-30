import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/core/routes.dart';

import 'package:mocktail/mocktail.dart';

/// Mocked go router
class MockGoRouter extends Mock implements GoRouter {}

/// Provider for mocked go router
class MockGoRouterProvider extends StatelessWidget {
  const MockGoRouterProvider({
    required this.goRouter,
    required this.child,
    super.key,
  });

  /// The mock navigator used to mock navigation calls.
  final MockGoRouter goRouter;

  /// The child [Widget] to render.
  final Widget child;

  @override
  Widget build(BuildContext context) => InheritedGoRouter(
        goRouter: goRouter,
        child: child,
      );
}

GoRouter testRouter() => GoRouter(routes: routes());
