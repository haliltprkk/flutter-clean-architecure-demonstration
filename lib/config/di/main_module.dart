import 'package:clean_architecture_demonstration/presentation/utils/app_navigator.dart';
import 'package:clean_architecture_demonstration/presentation/utils/app_navigator_beamer.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MainModule {
  @LazySingleton(as: AppNavigator)
  BeamerNavigator get appNavigator;
}
