import '../../../dependency_injection.dart';
import '../../../domain/repositories/evento/evento_repository.dart';
import '../../repository_implementation/evento/evento_repository_impl.dart';

mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    // --- dio ---
    getIt.registerSingleton<EventoRepository>(EventoRepositoryImpl(
      api: getIt.get(),
    ));
  }
}
