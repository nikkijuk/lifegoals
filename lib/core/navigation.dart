import 'package:go_router/go_router.dart';
import 'package:lifegoals/features/about/view/about_page.dart';
import 'package:lifegoals/features/authentication/authentication_views.dart';
import 'package:lifegoals/features/counter/view/counter_page.dart';
import 'package:lifegoals/features/scanner/view/scanner_page.dart';
import 'package:lifegoals/features/todo/view/todos_page.dart';

class Routes {
  static const home = '/';
  static const about = '/about';
  static const scanner = '/scanner';
  static const login = '/login';
  static const logout = '/logout';
  static const profile = '/profile';
  static const todos = '/todos';
  static const forgotPasswordName = 'forgot';
  static const forgotPasswordPath = '/forgot/:email';
}

// ignores for coverage are added as navigation is tested with mocked routes
GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (ctx, state) => const CounterPage(),
        ),
        GoRoute(
          path: Routes.about,
          builder: (ctx, state) => const AboutPage(), // coverage:ignore-line
        ),
        GoRoute(
          path: Routes.scanner,
          builder: (ctx, state) => const ScannerPage(), // coverage:ignore-line
        ),
        GoRoute(
          path: Routes.login,
          builder: (ctx, state) => singInScreen(ctx), // coverage:ignore-line
        ),
        GoRoute(
          path: Routes.profile,
          builder: (ctx, state) => profileScreen(ctx), // coverage:ignore-line
        ),
        GoRoute(
          path: Routes.todos,
          builder: (ctx, state) => const TodosPage(), // coverage:ignore-line
        ),
        GoRoute(
          name: Routes.forgotPasswordName,
          path: Routes.forgotPasswordPath,
          builder: forgotPasswordScreen, // coverage:ignore-line
        )
      ],
    );
