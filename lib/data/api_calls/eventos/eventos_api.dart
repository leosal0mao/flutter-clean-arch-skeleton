import 'dart:convert';

import '../../../domain/entities/evento/evento_entity.dart';
import '../../../domain/entities/pagination_entity.dart';
import '../../adapters/network/dio_client.dart';
import '../../adapters/network/endpoints/endpoints.dart';

class EventosApi {
  final DioClient _dioClient;

  EventosApi(
    this._dioClient,
  );

  Future<Pagination<Evento>> getEventos(int page, {String? status}) async {
    try {
      final response = await _dioClient.get(Endpoints.eventosUrl,
          queryParameters: {'page': page, 'status': status});
      final entity = Pagination<Evento>.fromMap(json.decode(response.body),
          (data) => data.map((x) => Evento.fromMap(x)).toList());
      return entity;
    } catch (e) {
      throw Exception(e);
    }
  }
}
