import 'package:dio/dio.dart';

import '../../../dependency_injection.dart';
import '../../adapters/network/dio_client.dart';
import '../../adapters/network/rest_client.dart';
import '../../api_calls/eventos/eventos_api.dart';

mixin NetworkModule {
  static Future<void> configureNetworkModuleInjection() async {
    // --- network adapters ---
    getIt.registerSingleton<DioClient>(DioClient(Dio()));
    getIt.registerSingleton<RestClient>(RestClient());

    // --- API CALLS ---
    // ---------------------- eventos
    getIt.registerLazySingleton(() => EventosApi(getIt.get()));
    // #################################
    // ---------------------- refeitorio
    // #################################
    // ---------------------- campeonato
    // #################################
    // ---------------------- modalidade
  }
}
