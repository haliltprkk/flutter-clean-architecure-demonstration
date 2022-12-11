import 'package:beamer/beamer.dart';
import 'package:clean_architecture_demonstration/presentation/theme.dart';
import 'package:clean_architecture_demonstration/presentation/utils/app_navigator.dart';
import 'package:flutter/material.dart';

import '../config/di/di.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routerDelegate = inject<AppNavigator>().routerDelegate;
    return MaterialApp.router(
      routerDelegate: routerDelegate,
      theme: defaultTheme(),
      routeInformationParser: inject<AppNavigator>().routeInformationParser,
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
    );
  }
}
