import 'package:clean_architecture_demonstration/data/character_detail/api_service/character_detail_api_service.dart';
import 'package:clean_architecture_demonstration/data/character_list/api_service/character_list_api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../api_config.dart';

@module
abstract class NetworkingModule {
  @lazySingleton
  Dio get dio => Dio()
    ..interceptors.addAll([
      if (!kReleaseMode) PrettyDioLogger(requestBody: true),
    ]);

  @lazySingleton
  CharacterListApiService getCharacterListApiService(Dio dio, ApiConfig appConfig) =>
      CharacterListApiService(dio, baseUrl: appConfig.baseUrl);

  @lazySingleton
  CharacterDetailApiService getCharacterDetailApiService(Dio dio, ApiConfig appConfig) =>
      CharacterDetailApiService(dio, baseUrl: appConfig.baseUrl);
}
