part of 'eventos_bloc.dart';

sealed class EventosState extends Equatable {
  const EventosState();

  @override
  List<Object> get props => [];
}

final class EventosInitial extends EventosState {}

final class EventosLoading extends EventosState {
  const EventosLoading();

  @override
  List<Object> get props => [];
}

final class EventosFailure extends EventosState {
  final String message;
  const EventosFailure({required this.message});

  @override
  List<Object> get props => [message];
}

final class EventosSuccess extends EventosState {
  final Pagination<Evento> eventos;
  const EventosSuccess({required this.eventos});

  @override
  List<Object> get props => [eventos];
}
