// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:lifegoals/authentication/bloc/authentication_bloc.dart';
import 'package:lifegoals/core/injection.dart';
import 'package:lifegoals/core/navigation.dart';
import 'package:lifegoals/counter/counter.dart';
import 'package:lifegoals/l10n/l10n.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

@injectable
class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocProvider<AuthenticationBloc>(
      create: (_) => getIt<AuthenticationBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
        body: const Center(child: CounterText()),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              heroTag: 'increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              heroTag: 'decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: () => context.go(Routes.about),
              heroTag: 'about',
              child: const Icon(Icons.info),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: () => context.go(Routes.login),
              heroTag: 'login',
              child: const Icon(Icons.login),
            ),
            // TODO(jnikki): showing / allowing press of profile button
            //  even if is not authenticated creates NPE
            //  within firebase-auth-ui
            const SizedBox(height: 8),
            BlocBuilder<AuthenticationBloc, AuthenticationStatus>(
              builder: (context, state) {
                return (state != AuthenticationStatus.unauthenticated)
                    ? FloatingActionButton(
                        onPressed: () => context.go(Routes.profile),
                        heroTag: 'profile',
                        child: const Icon(Icons.verified_user),
                      )
                    : const SizedBox(height: 8);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.headline1);
  }
}
