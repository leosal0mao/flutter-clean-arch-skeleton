import 'package:equatable/equatable.dart';

import 'municipio_entity.dart';

class Local with EquatableMixin {
  String? id;
  String? idCategoria;
  int? idMunicipio;
  String? descricao;
  String? observacao;
  String? endereco;
  String? complemento;
  String? cep;
  String? bairro;
  Municipio? municipio;

  Local({
    this.id,
    this.idCategoria,
    this.idMunicipio,
    this.descricao,
    this.observacao,
    this.endereco,
    this.complemento,
    this.cep,
    this.bairro,
    this.municipio,
  });

  @override
  List<Object?> get props => [
        id,
        idCategoria,
        idMunicipio,
        descricao,
        observacao,
        endereco,
        complemento,
        cep,
        bairro,
        municipio,
      ];
}
