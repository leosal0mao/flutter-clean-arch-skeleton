import '../../../dependency_injection.dart';
import '../../../domain/repositories/evento/evento_repository.dart';
import '../../../domain/usecases/evento/get_eventos_usecase.dart';
import '../../pages/example_presentation/bloc/eventos_bloc.dart';

mixin BlocModule {
  static Future<void> configureStoreModuleInjection() async {
    // ------------- EVENTOS -------------------
    getIt.registerLazySingleton<EventosBloc>(
      () => EventosBloc(
        getEventosUsecase: getIt<GetEventosUsecase>(),
        repository: getIt<EventoRepository>(),
      ),
    );
    // #########################################

    // ----------- REFEITORIO ------------------
    // #########################################

    // ---------- CAMPEONATO -------------------
    // #########################################

    // ---------- MODALIDADE -------------------
  }
}
