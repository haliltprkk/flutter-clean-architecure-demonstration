import 'package:clean_architecture_demonstration/presentation/theme.dart';
import 'package:flutter/material.dart';

import 'character_list/character_list_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme(),
      home: CharacterListPage(),
    );
  }
}
