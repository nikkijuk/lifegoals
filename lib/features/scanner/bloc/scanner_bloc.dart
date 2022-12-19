import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_event.dart';
import 'package:lifegoals/features/scanner/bloc/scanner_state.dart';

class ScannerBloc extends Bloc<ScannerEvent, ScannerState> {
  ScannerBloc() : super(const Inactive()) {
    on<ReadFailed>(_readFailed);
    on<ReadSucceeded>(_readSucceeded);
  }

  FutureOr<void> _readFailed(ReadFailed event, Emitter<ScannerState> emit) {
    // NOP ??
  }

  FutureOr<void> _readSucceeded(
    ReadSucceeded event,
    Emitter<ScannerState> emit,
  ) {
    emit(Found(event.code));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
