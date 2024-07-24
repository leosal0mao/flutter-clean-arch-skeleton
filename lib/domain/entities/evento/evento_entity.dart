import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'formato_entity.dart';
import 'jogos_oficiais_entity.dart';
import 'municipio_sede_entity.dart';
import 'regional_entity.dart';

class Evento with EquatableMixin {
  Evento({
    required this.idFormato,
    required this.formato,
    required this.id,
    required this.idEvento,
    required this.idJogosOficiais,
    required this.idRegional,
    required this.idMacrorregional,
    required this.dataInicioEvento,
    required this.dataFinalEvento,
    required this.titulo,
    required this.descricao,
    required this.descricaoAbreviada,
    required this.jogosOficiais,
    required this.regional,
    required this.macrorregional,
    required this.municipiosSede,
  });

  final int? id;
  final int? idEvento;
  final int? idJogosOficiais;
  final int? idRegional;
  final int? idMacrorregional;
  final int? idFormato;
  final String? dataInicioEvento;
  final String? dataFinalEvento;
  final String? titulo;
  final String? descricao;
  final String? descricaoAbreviada;
  final Formato? formato;
  final JogosOficiais? jogosOficiais;
  final Regional? regional;
  final Regional? macrorregional;
  final List<MunicipioSede>? municipiosSede;

  @override
  List<Object?> get props => [
        id,
        idEvento,
        idJogosOficiais,
        idRegional,
        idMacrorregional,
        idFormato,
        dataInicioEvento,
        dataFinalEvento,
        titulo,
        descricao,
        descricaoAbreviada,
        formato,
        jogosOficiais,
        regional,
        macrorregional,
        municipiosSede,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory Evento.fromRawJson(String str) => Evento.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory Evento.fromMap(Map<String, dynamic> json) => Evento(
        id: json["id"],
        idEvento: json["id_evento"],
        idJogosOficiais: json["id_jogos_oficiais"],
        idRegional: json["id_regional"],
        idMacrorregional: json["id_macrorregional"],
        idFormato: json["id_formato"],
        dataInicioEvento: json["data_inicio_evento"],
        dataFinalEvento: json["data_final_evento"],
        titulo: json["titulo"],
        descricao: json["descricao"],
        descricaoAbreviada: json["descricao_abreviada"],
        formato: json["formato"],
        jogosOficiais: json['jogos_oficiais'] != null
            ? JogosOficiais.fromMap(json['jogos_oficiais'])
            : null,
        regional: json["regional"] == null
            ? null
            : Regional.fromMap(json["regional"]),
        macrorregional: json["macroregional"] == null
            ? null
            : Regional.fromMap(json["macroregional"]),
        municipiosSede: json['municipios_sede'] == null
            ? []
            : List<MunicipioSede>.from(
                json['municipios_sede']!.map((dynamic x) => x)),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        "id_evento": idEvento,
        "id_jogos_oficiais": idJogosOficiais,
        "id_regional": idRegional,
        "id_macrorregional": idMacrorregional,
        "id_formato": idFormato,
        "data_inicio_evento": dataInicioEvento,
        "data_final_evento": dataFinalEvento,
        "titulo": titulo,
        "descricao": descricao,
        "descricao_abreviada": descricaoAbreviada,
        "formato": formato,
        'jogos_oficiais': jogosOficiais != null
            ? JogosOficiais.fromMap(jogosOficiais! as Map<String, dynamic>)
                .toMap()
            : null,
        "regional": regional != null
            ? Regional.fromMap(regional! as Map<String, dynamic>).toMap()
            : null,
        "macroregional": macrorregional != null
            ? Regional.fromMap(macrorregional as Map<String, dynamic>).toMap()
            : null,
        "municipios_sede": municipiosSede != null
            ? MunicipioSede.fromMap(municipiosSede as Map<String, dynamic>)
                .toMap()
            : null,
      };
}
