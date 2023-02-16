import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/routes.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ChildRoute(
      RoutesNames.configurationPage,
      child: (context, args) => const ConfigurationPage(),
    )
  ];
}
