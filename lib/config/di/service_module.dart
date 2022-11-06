import 'package:clean_architecture_demonstration/domain/orientation_service.dart';
import 'package:injectable/injectable.dart';

import '../../data/services_impl/default_orientation_service.dart';

@module
abstract class ServiceModule {
  @LazySingleton(as: OrientationService)
  DefaultOrientationService get defaultOrientationService;
}
