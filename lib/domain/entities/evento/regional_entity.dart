import 'dart:convert';

import 'package:equatable/equatable.dart';

class Regional with EquatableMixin {
  String? id;
  String? descricao;

  Regional({this.id, this.descricao});

  @override
  List<Object?> get props => [
        id,
        descricao,
      ];

  // ---------------------------------------------------------------------------
  // JSON
  // ---------------------------------------------------------------------------
  factory Regional.fromRawJson(String str) =>
      Regional.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  // ---------------------------------------------------------------------------
  // Maps
  // ---------------------------------------------------------------------------
  factory Regional.fromMap(Map<String, dynamic> json) => Regional(
        id: json["id"],
        descricao: json["descricao"],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'descricao': descricao,
      };
}
