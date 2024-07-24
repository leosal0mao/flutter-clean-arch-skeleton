import 'dart:convert';

import 'package:equatable/equatable.dart';

class Municipio with EquatableMixin {
  Municipio({
    required this.id,
    required this.nome,
  });

  final int? id;
  final String? nome;

  @override
  List<Object?> get props => [
        id,
        nome,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory Municipio.fromRawJson(String str) =>
      Municipio.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory Municipio.fromMap(Map<String, dynamic> json) => Municipio(
        id: json["id"],
        nome: json["nome"],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        "nome": nome,
      };
}
