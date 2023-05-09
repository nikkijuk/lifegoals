import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_state.freezed.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState.inactive() = Inactive;
  const factory ScannerState.found(String code) = Found;
}
