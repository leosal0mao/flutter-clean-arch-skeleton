import 'package:equatable/equatable.dart';

class Formato with EquatableMixin {
  Formato({
    required this.id,
    required this.descricao,
  });

  final int? id;
  final String? descricao;

  @override
  List<Object?> get props => [id, descricao];
}
