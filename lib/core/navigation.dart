import 'package:equatable/equatable.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/about/view/about_page.dart';
import 'package:lifegoals/counter/counter.dart';

class Routes extends Equatable {
  static const home = '/';

  static const about = '/about';

  @override
  List<Object?> get props => [home, about];
}

GoRouter router([String? initialLocation]) => GoRouter(
      initialLocation: initialLocation ?? Routes.home,
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (_, __) => const CounterPage(),
        ),
        GoRoute(
          path: Routes.about,
          builder: (_, __) => const AboutPage(),
        )
      ],
    );
