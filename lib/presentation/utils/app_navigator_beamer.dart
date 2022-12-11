import 'package:beamer/beamer.dart';
import 'package:clean_architecture_demonstration/presentation/character_detail/character_detail_page.dart';
import 'package:clean_architecture_demonstration/presentation/character_list/character_list_page.dart';
import 'package:flutter/widgets.dart';

import 'app_navigator.dart';

class BeamerNavigator implements AppNavigator {
  final _routerDelegate = BeamerDelegate(
    initialPath: AppNavigator.characterListPath,
    locationBuilder: RoutesLocationBuilder(
      routes: {
        AppNavigator.characterListPath: (context, state, data) => CharacterListPage(),
        AppNavigator.characterDetailPath: (context, state, data) {
          List args = data as List;
          return CharacterDetailPage(args[0], args[1]);
        },
      },
    ),
  );

  @override
  RouteInformationParser<Object> get routeInformationParser => BeamerParser();

  @override
  BeamerDelegate get routerDelegate => _routerDelegate;

  @override
  void pushNamedStack(BuildContext context,
      {required List<String> routes, bool replacement = false, data}) {
    assert(routes.isNotEmpty, 'Cannot create path from empty list');
    String uri = '';
    for (var route in routes) {
      uri = '/$uri$route';
    }
    pushNamed(context, route: uri, replacement: replacement, data: data);
  }

  @override
  void pushNamed(BuildContext context, {required String route, bool replacement = false, data}) {
    if (replacement) {
      context.beamToReplacementNamed(route, data: data);
    } else {
      context.beamToNamed(route, data: data);
    }
  }

  @override
  void backToPreviousScreen(BuildContext context,{data}) => context.beamBack();

  @override
  void popStack(BuildContext context) => Navigator.of(context).pop();
}
