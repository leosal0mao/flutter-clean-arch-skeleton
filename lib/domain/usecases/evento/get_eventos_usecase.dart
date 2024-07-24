import 'package:dartz/dartz.dart';

import '../../../core/network/errors/failure.dart';
import '../../../core/usecase/usecase.dart';
import '../../entities/evento/evento_entity.dart';
import '../../entities/pagination_entity.dart';
import '../../repositories/evento/evento_repository.dart';

class ParamsGetEventosUsecase {
  final int? page;
  final String? status;
  const ParamsGetEventosUsecase({this.page, this.status});
}

class GetEventosResult {
  final Pagination<Evento> response;

  GetEventosResult({required this.response});
}

class GetEventosUsecase
    extends UseCase<GetEventosResult, ParamsGetEventosUsecase> {
  EventoRepository repository;

  GetEventosUsecase({required this.repository});
  @override
  Future<Either<Failure, GetEventosResult>> call(
      ParamsGetEventosUsecase params) async {
    final result = await repository.getEventos(params.status!, params.page!);

    return result.fold(
      (failure) => Left(failure),
      (right) => Right(GetEventosResult(response: right)),
    );
  }
}
