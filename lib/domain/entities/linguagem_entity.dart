import 'dart:convert';

import 'package:equatable/equatable.dart';

class Linguagem with EquatableMixin {
  String? code;
  String? name;

  Linguagem({
    required this.code,
    required this.name,
  });

  @override
  List<Object?> get props => [
        code,
        name,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory Linguagem.fromRawJson(String str) =>
      Linguagem.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory Linguagem.fromMap(Map<String, dynamic> json) {
    return Linguagem(
      code: json["code"],
      name: json["name"],
    );
  }

  Map<String, dynamic> toMap() => {
        "code": code,
        "name": name,
      };
}
