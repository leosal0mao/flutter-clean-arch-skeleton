import '../../../dependency_injection.dart';
import '../../usecases/evento/get_eventos_usecase.dart';

mixin UsecaseModule {
  static Future<void> configureUseCaseModuleInjection() async {
    //---- events injections
    getIt.registerSingleton<GetEventosUsecase>(
      GetEventosUsecase(repository: getIt.get()),
    );
  }
}
