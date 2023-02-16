import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/routes.dart';
import 'package:listinha/src/home/edit_task_board_page.dart';
import 'package:listinha/src/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(RoutesNames.homePage,
        child: (context, args) => const HomePage()),
    ChildRoute(RoutesNames.editTaskBoardPage,
        child: (context, args) => const EditTaskBoardPage()),
  ];
}
