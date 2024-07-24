import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/evento/evento_entity.dart';
import '../../../../domain/entities/pagination_entity.dart';
import '../../../../domain/repositories/evento/evento_repository.dart';
import '../../../../domain/usecases/evento/get_eventos_usecase.dart';

part 'eventos_event.dart';
part 'eventos_state.dart';

class EventosBloc extends Bloc<EventosEvent, EventosState> {
  final GetEventosUsecase getEventosUsecase;
  final EventoRepository repository;

  EventosBloc({required this.repository, required this.getEventosUsecase})
      : super(EventosInitial()) {
    on<GetEventosEvent>((event, emit) async {
      emit(await getEventos(event: event, emit: emit));
    });
  }

  Future<EventosState> getEventos({
    required GetEventosEvent event,
    required Emitter<EventosState> emit,
  }) async {
    final result =
        await getEventosUsecase(ParamsGetEventosUsecase(page: event.page));

    return result.fold((l) {
      emit(EventosFailure(message: l.toString()));
      return const EventosFailure(message: 'Failure');
    }, (r) {
      emit(EventosSuccess(eventos: r.response));
      return EventosSuccess(eventos: r.response);
    });
  }
}
