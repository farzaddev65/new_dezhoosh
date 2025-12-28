import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


part 'question/question.dart';
part 'switchs/switch_model.dart';

T? removeNullEntries<T>(final T? json) {
  if (json == null) return null;

  if (json is List) {
    json.removeWhere((final dynamic e) => e == null);
    json.forEach(removeNullEntries);
  } else if (json is Map) {
    json.removeWhere((final dynamic key, final dynamic value) => key == null || value == null);
    json.values.forEach(removeNullEntries);
  }

  return json;
}

class EmptyObjectDto {
  EmptyObjectDto({this.o});

  factory EmptyObjectDto.fromJson(final String str) => EmptyObjectDto.fromMap(json.decode(str));

  factory EmptyObjectDto.fromMap(final Map<String, dynamic> json) => EmptyObjectDto(o: json["o"]);
  final String? o;

  String toJson() => json.encode(removeNullEntries(toMap()));

  Map<String, dynamic> toMap() => <String, dynamic>{"o": o};
}
