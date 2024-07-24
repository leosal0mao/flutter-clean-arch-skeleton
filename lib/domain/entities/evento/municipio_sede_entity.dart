import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'municipio_entity.dart';

class MunicipioSede with EquatableMixin {
  MunicipioSede({
    required this.id,
    required this.idEvento,
    required this.idMunicipio,
    required this.municipio,
  });

  final int? id;
  final int? idEvento;
  final int? idMunicipio;
  final Municipio? municipio;

  @override
  List<Object?> get props => [
        id,
        idEvento,
        idMunicipio,
        municipio,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory MunicipioSede.fromRawJson(String str) =>
      MunicipioSede.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory MunicipioSede.fromMap(Map<String, dynamic> json) => MunicipioSede(
        id: json["id"],
        idEvento: json['id_evento'],
        idMunicipio: json['id_municipio'],
        municipio: json['municipio'] != null
            ? Municipio.fromMap(json['municipio'])
            : null,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_evento': idEvento,
        'id_municipio': idMunicipio,
        'municipio': municipio != null
            ? Municipio.fromMap(municipio as Map<String, dynamic>).toMap()
            : null
      };
}
