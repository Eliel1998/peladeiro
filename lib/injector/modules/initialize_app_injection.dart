import 'package:peladeiro/injector/injector.dart';
import 'package:peladeiro/injector/modules/peladeiro/peladeiro_injector.dart';

class InitializeAppInjection extends Injector {
  InitializeAppInjection(super.getItInstance);

  @override
  void stores() {
    PeladeiroInjector(getItInstance).register();
  }

}