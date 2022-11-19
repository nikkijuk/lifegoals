import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lifegoals/l10n/l10n.dart';

import '../../core/navigation.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.aboutAppBarTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <ElevatedButton>[
            ElevatedButton(
              onPressed: () => context.go(Routes.home),
              child: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
