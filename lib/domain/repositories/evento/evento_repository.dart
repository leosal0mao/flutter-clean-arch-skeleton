import 'package:dartz/dartz.dart';

import '../../../core/network/errors/failure.dart';
import '../../entities/evento/evento_entity.dart';
import '../../entities/pagination_entity.dart';

abstract class EventoRepository {
  Future<Either<Failure, Pagination<Evento>>> getEventos(
      String status, int page);
}
