import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_bloc.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_event.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_state.dart';

void main() {
  group(
    'ScannerBloc',
    () {
      test('initial state is nothing happened', () {
        expect(
          ScannerBloc().state,
          equals(const Inactive()),
        );
      });

      blocTest<ScannerBloc, ScannerState>(
        'emits [] when [ReadFailed] happens}',
        build: ScannerBloc.new,
        act: (bloc) => bloc.add(const ReadFailed()),
        expect: () => <ScannerEvent>[],
      );

      blocTest<ScannerBloc, ScannerState>(
        'emits [Found(123)] when [ReadSucceeded(123)] happens}',
        build: ScannerBloc.new,
        act: (bloc) => bloc.add(const ReadSucceeded('123')),
        expect: () => [const Found('123')],
      );
    },
  );
}
