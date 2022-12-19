import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_event.freezed.dart';

@freezed
abstract class ScannerEvent with _$ScannerEvent {
  const factory ScannerEvent.readFailed() = ReadFailed;
  const factory ScannerEvent.readSucceeded(String code) = ReadSucceeded;
}
