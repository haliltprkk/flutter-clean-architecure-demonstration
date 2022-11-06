import 'package:flutter/services.dart';

import '../../domain/orientation_service.dart';

class DefaultOrientationService implements OrientationService {
  @override
  Future<void> setOrientation(List<AppOrientation> orientations) async {
    final deviceOrientations = orientations.map((orientation) {
      switch (orientation) {
        case AppOrientation.portraitUp:
          return DeviceOrientation.portraitUp;

        case AppOrientation.landscapeLeft:
          return DeviceOrientation.landscapeLeft;

        case AppOrientation.portraitDown:
          return DeviceOrientation.portraitDown;

        case AppOrientation.landscapeRight:
          return DeviceOrientation.landscapeRight;
      }
    }).toList();

    await SystemChrome.setPreferredOrientations(deviceOrientations);
  }
}
