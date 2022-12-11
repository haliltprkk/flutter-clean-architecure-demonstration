import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

abstract class AppNavigator {
  static const String homePath = '/';
  static const String characterListPath = '/characterList';
  static const String characterDetailPath = '/characterDetail';

  BeamerDelegate get routerDelegate;

  RouteInformationParser<Object> get routeInformationParser;

  void pushNamedStack(BuildContext context, {required List<String> routes, bool replacement});

  void pushNamed(BuildContext context, {required String route, bool replacement, data});

  void popStack(BuildContext context);

  void backToPreviousScreen(BuildContext context, {data});
}
