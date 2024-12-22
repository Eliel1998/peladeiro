import 'package:get_it/get_it.dart';

abstract class Injector {
  const Injector(this.getItInstance);
  final GetIt getItInstance;

  void core() {}
  void clients() {}
  void drivers() {}
  void dataSources() {}
  void services() {}
  void repositories() {}
  void useCases() {}
  void stores() {}
  void controllers() {}

  void register() {
    core();
    clients();
    drivers();
    dataSources();
    services();
    repositories();
    useCases();
    stores();
    controllers();
  }

  void registerFactory<T extends Object>(T Function() factoryFunc) {
    getItInstance.registerFactory<T>(factoryFunc);
  }

  void registerSingleton<T extends Object>(T instance, {String? instanceName}) {
    getItInstance.registerSingleton<T>(instance, instanceName: instanceName);
  }

  void registerLazySingleton<T extends Object>(T Function() factoryFunc) {
    getItInstance.registerLazySingleton<T>(factoryFunc);
  }

  T get<T extends Object>({String? instanceName}) {
    return getItInstance.get<T>(instanceName: instanceName);
  }
}
