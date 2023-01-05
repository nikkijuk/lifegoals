# Adr-0006: Use arb files to localization

## Status

- [ ] New
- [x] Proposed
- [ ] Accepted
- [ ] Rejected
- [ ] Deprecated

## Context

Localization is important part of building applications. 

It's common that translations are defined using file per language convention (one file per language),
and term and sentences are identified using keys (id, string) withing given file (language).

Keys in language files and keys in code may get out of sync.
It would be useful to detect mismatch during development (compile time failure) 
and not during testing or production (runtime failure).

There's plenty of tools for localization management, formats for localization files
and libraries to work with localizations within app code.

Selecting one approach which allows potentially in future to add 
services for automatic language translation enhances architectural clarity and extensibility.

## Decision

We use arb files for localization of messages, even if there's lot of other formats also.

Application Resource Bundle (.arb) is a localization file format based on JSON.

We use gen-l10n to generate code artifacts.

Code generation can be done with flutter cli command.

```sh
$ flutter gen-l10n
```

We use l10n.yaml to define rules for artifact generation

```
    arb-dir: lib/l10n/arb
    template-arb-file: app_en.arb
    output-localization-file: app_localizations.dart
    nullable-getter: false
```

Configuration defines where localization files reside and to where code is generated.

We use generated extension method to access localizations.

```
extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
```

Generation allows us to see during build time if localizations are not matching to keys used in code.

Using standards formats supported by Flutter we make it possible to 
use in future language management services like localizely.com

https://localizely.com/blog/flutter-localization-step-by-step/?tab=using-gen-l10n

## Consequences

By staying close to flutters default localization tools we try to stay open to 
changes and coming features of Flutter.

As we have decided not to use any widely used popular file formats 
it might be that some tools are not supported and language management tools choice is limited.

Code generation allows to us programming model which is safe so that problems due to localization
don't show up at runtime.