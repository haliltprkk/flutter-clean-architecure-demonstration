import 'package:clean_architecture_demonstration/config/api_config.dart';
import 'package:clean_architecture_demonstration/config/di/di.dart';
import 'package:clean_architecture_demonstration/presentation/utils/app.dart';
import 'package:flutter/material.dart';

import 'domain/orientation_service.dart';

Future<void> runMain(ApiConfig apiConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDI(apiConfig);
  await inject<OrientationService>().setOrientation([AppOrientation.portraitUp]);
  runApp(const App());
}
