import 'dart:convert';

import 'package:equatable/equatable.dart';

class JogosOficiais with EquatableMixin {
  JogosOficiais({
    required this.id,
    required this.eventoMultiplo,
    required this.sigla,
    required this.descricao,
    required this.logo,
  });

  final int? id;
  final int? eventoMultiplo;
  final String? sigla;
  final String? descricao;
  final String? logo;

  @override
  List<Object?> get props => [
        id,
        eventoMultiplo,
        sigla,
        descricao,
        logo,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory JogosOficiais.fromRawJson(String str) =>
      JogosOficiais.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory JogosOficiais.fromMap(Map<String, dynamic> json) => JogosOficiais(
        id: json["id"],
        eventoMultiplo: json["evento_multiplo"],
        sigla: json["sigla"],
        descricao: json["descricao"],
        logo: json["logo"],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        "evento_multiplo": eventoMultiplo,
        "sigla": sigla,
        "descricao": descricao,
        "logo": logo,
      };
}
