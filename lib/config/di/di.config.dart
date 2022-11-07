// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/character_list/api_service/character_list_api_service.dart'
    as _i5;
import '../../data/character_list/repository/character_list_repository_impl.dart'
    as _i13;
import '../../data/services_impl/default_orientation_service.dart' as _i11;
import '../../domain/character_list/character_list_repository.dart' as _i7;
import '../../domain/orientation_service.dart' as _i4;
import '../../presentation/character_list/character_list_bloc.dart' as _i8;
import '../api_config.dart' as _i6;
import 'bloc_module.dart' as _i14;
import 'netwoking_module.dart' as _i9;
import 'repository_module.dart' as _i12;
import 'service_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final networkingModule = _$NetworkingModule();
  final serviceModule = _$ServiceModule();
  final repositoryModule = _$RepositoryModule(get);
  final blocModule = _$BlocModule(get);
  gh.lazySingleton<_i3.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i4.OrientationService>(
      () => serviceModule.defaultOrientationService);
  gh.lazySingleton<_i5.CharacterListApiService>(
      () => networkingModule.getApiRestRepoDao(
            get<_i3.Dio>(),
            get<_i6.ApiConfig>(),
          ));
  gh.lazySingleton<_i7.CharacterListRepository>(
      () => repositoryModule.characterListRepository);
  gh.factory<_i8.CharacterListBloc>(() => blocModule.characterListBloc);
  return get;
}

class _$NetworkingModule extends _i9.NetworkingModule {}

class _$ServiceModule extends _i10.ServiceModule {
  @override
  _i11.DefaultOrientationService get defaultOrientationService =>
      _i11.DefaultOrientationService();
}

class _$RepositoryModule extends _i12.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i13.CharacterListRepositoryImpl get characterListRepository =>
      _i13.CharacterListRepositoryImpl(_getIt<_i5.CharacterListApiService>());
}

class _$BlocModule extends _i14.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i8.CharacterListBloc get characterListBloc =>
      _i8.CharacterListBloc(_getIt<_i7.CharacterListRepository>());
}
