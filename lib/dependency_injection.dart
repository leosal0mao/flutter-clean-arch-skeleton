import 'package:get_it/get_it.dart';

import 'data/di/data_layer_injector.dart';
import 'domain/di/domain_layer_injector.dart';
import 'presentation/di/presentation_layer_injector.dart';

GetIt getIt = GetIt.instance;

mixin DependencyInjection {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configureDataLayerInjection();
    await DomainLayerInjection.configureDomainLayerInjection();
    await PresentationLayerInjection.configurePresentationLayerInjection();
  }
}
