import 'package:go_router/go_router.dart';
import 'package:lifegoals/about/view/about_page.dart';
import 'package:lifegoals/counter/counter.dart';

class Routes {
  static const home = '/';
  static const about = '/about';
}

GoRouter router() => GoRouter(
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (_, __) => const CounterPage(),
        ),
        GoRoute(
          path: Routes.about,
          builder: (_, __) => const AboutPage(), // coverage:ignore-line
        )
      ],
    );
