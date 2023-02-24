import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/routes.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/configuration/services/configuration_service.dart';
import 'package:listinha/src/home/home_module.dart';
import 'package:listinha/src/shared/services/realm/realm_config.dart';
import 'package:listinha/src/shared/stores/app_store.dart';
import 'package:realm/realm.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.instance<Realm>(Realm(config)),
        Bind.singleton<ConfigurationService>(
          (i) => ConfigurationServiceImpl(i(), AppStore()),
        ),
        Bind.singleton((i) => AppStore()),
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ChildRoute(
      RoutesNames.configurationPage,
      child: (context, args) => const ConfigurationPage(),
    )
  ];
}
