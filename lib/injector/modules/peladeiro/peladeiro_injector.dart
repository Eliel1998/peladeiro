import 'package:peladeiro/pages/peladeiro_page/peladeiro_controller.dart';
import 'package:peladeiro/pages/peladeiro_page/peladeiro_store.dart';

import '../../injector.dart';

class PeladeiroInjector extends Injector {
  PeladeiroInjector(super.getItInstance);

  @override
  void controllers() {
    getItInstance.registerFactory(() => PeladeiroController(getItInstance<PeladeiroStore>()));
  }

  @override
  void stores() {
    getItInstance.registerSingleton<PeladeiroStore>(PeladeiroStore());
  }

}