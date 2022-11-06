import 'package:clean_architecture_demonstration/config/api_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final GetIt _getIt = GetIt.instance;

@InjectableInit()
void configureDI(ApiConfig apiConfig) {
  _getIt.registerSingleton<ApiConfig>(apiConfig);
  $initGetIt(_getIt);
}

T inject<T extends Object>() => _getIt.get<T>();
