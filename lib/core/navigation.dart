// coverage:ignore-file
// code coverage is ignored as navigation is tested with mocked routes

import 'package:go_router/go_router.dart';
import 'package:lifegoals/features/about/view/about_page.dart';
import 'package:lifegoals/features/authentication/view/forgot_password_page.dart';
import 'package:lifegoals/features/authentication/view/user_profile_page.dart';
import 'package:lifegoals/features/authentication/view/user_signin_page.dart';
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
  static const forgotPasswordName = '/forgot/';
  static const forgotPassword = '/forgot/:email';
}

GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (_, __) => const CounterPage(),
        ),
        GoRoute(
          path: Routes.about,
          builder: (_, __) => const AboutPage(),
        ),
        GoRoute(
          path: Routes.scanner,
          builder: (_, __) => const ScannerPage(),
        ),
        GoRoute(
          path: Routes.login,
          builder: (_, __) => const UserSignInPage(),
        ),
        GoRoute(
          path: Routes.profile,
          builder: (_, __) => const UserProfilePage(),
        ),
        GoRoute(
          path: Routes.todos,
          builder: (_, __) => const TodosPage(),
        ),
        GoRoute(
          path: Routes.forgotPassword,
          builder: (context, state) => ForgotPasswordPage(
            state.params['email']!,
          ),
        )
      ],
    );
