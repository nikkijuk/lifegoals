import 'package:flutter/material.dart';
import 'package:lifegoals/constants/color.dart';
import 'package:lifegoals/l10n/l10n.dart';

class NewTag extends StatelessWidget {
  const NewTag({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Text(
        // TODO(jnikki): this makes no sense
        // AppLocalizations.of(context)!.newTag,
        l10n.aboutAppBarTitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
