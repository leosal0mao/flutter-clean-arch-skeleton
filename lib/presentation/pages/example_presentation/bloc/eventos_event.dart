part of 'eventos_bloc.dart';

sealed class EventosEvent extends Equatable {
  const EventosEvent();

  @override
  List<Object> get props => [];
}

class GetEventosEvent extends EventosEvent {
  final int page;

  const GetEventosEvent({required this.page});

  @override
  List<Object> get props => [page];
}
