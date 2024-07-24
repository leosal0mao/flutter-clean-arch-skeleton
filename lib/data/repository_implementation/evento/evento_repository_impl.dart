import 'package:dartz/dartz.dart';

import '../../../core/network/errors/failure.dart';
import '../../../domain/entities/evento/evento_entity.dart';
import '../../../domain/entities/pagination_entity.dart';
import '../../../domain/repositories/evento/evento_repository.dart';
import '../../api_calls/eventos/eventos_api.dart';

class EventoRepositoryImpl implements EventoRepository {
  final EventosApi _api;

  EventoRepositoryImpl({required EventosApi api}) : _api = api;
  @override
  Future<Either<Failure, Pagination<Evento>>> getEventos(
      String status, int page) async {
    try {
      final response = _api.getEventos(page);
      return right(response as Pagination<Evento>);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
