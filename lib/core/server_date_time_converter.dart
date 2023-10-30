// coverage:ignore-file
// ignore_for_file: unnecessary_string_escapes

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

// Timestaps & Datetimes seems to be problematic with firebase
// See here bit of discussion
// Code currently in use is just random pick from many

// https://stackoverflow.com/questions/10286204/what-is-the-right-json-date-format
// https://github.com/flutter/flutter/issues/31182
// https://github.com/rrousselGit/freezed/issues/428

final DateFormat df = DateFormat('yyyy-MM-dd\THH:mm:ss\+\O\0\0');

class ServerDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const ServerDateTimeConverter();

  @override
  DateTime? fromJson(String? value) {
    if (value is String) {
      return DateTime.parse(value);
    }

    return DateTime.fromMillisecondsSinceEpoch(0);
  }

  @override
  String? toJson(DateTime? value) {
    return value != null ? df.format(value) : null;
  }
}
