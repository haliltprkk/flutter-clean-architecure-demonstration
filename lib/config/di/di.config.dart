// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/character_detail/api_service/character_detail_api_service.dart'
    as _i5;
import '../../data/character_detail/repository/character_detail_repository_impl.dart'
    as _i16;
import '../../data/character_list/api_service/character_list_api_service.dart'
    as _i8;
import '../../data/character_list/repository/character_list_repository_impl.dart'
    as _i17;
import '../../data/services_impl/default_orientation_service.dart' as _i14;
import '../../domain/character_detail/character_detail_repository.dart' as _i7;
import '../../domain/character_list/character_list_repository.dart' as _i9;
import '../../domain/common/orientation_service.dart' as _i4;
import '../../presentation/character_detail/character_detail_bloc.dart' as _i10;
import '../../presentation/character_list/character_list_bloc.dart' as _i11;
import '../api_config.dart' as _i6;
import 'bloc_module.dart' as _i18;
import 'netwoking_module.dart' as _i12;
import 'repository_module.dart' as _i15;
import 'service_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.CharacterDetailApiService>(
      () => networkingModule.getCharacterDetailApiService(
            get<_i3.Dio>(),
            get<_i6.ApiConfig>(),
          ));
  gh.lazySingleton<_i7.CharacterDetailRepository>(
      () => repositoryModule.characterDetailRepository);
  gh.lazySingleton<_i8.CharacterListApiService>(
      () => networkingModule.getCharacterListApiService(
            get<_i3.Dio>(),
            get<_i6.ApiConfig>(),
          ));
  gh.lazySingleton<_i9.CharacterListRepository>(
      () => repositoryModule.characterListRepository);
  gh.factory<_i10.CharacterDetailBloc>(() => blocModule.characterDetailBloc);
  gh.factory<_i11.CharacterListBloc>(() => blocModule.characterListBloc);
  return get;
}

class _$NetworkingModule extends _i12.NetworkingModule {}

class _$ServiceModule extends _i13.ServiceModule {
  @override
  _i14.DefaultOrientationService get defaultOrientationService =>
      _i14.DefaultOrientationService();
}

class _$RepositoryModule extends _i15.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i16.CharacterDetailRepositoryImpl get characterDetailRepository =>
      _i16.CharacterDetailRepositoryImpl(
          _getIt<_i5.CharacterDetailApiService>());
  @override
  _i17.CharacterListRepositoryImpl get characterListRepository =>
      _i17.CharacterListRepositoryImpl(_getIt<_i8.CharacterListApiService>());
}

class _$BlocModule extends _i18.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i10.CharacterDetailBloc get characterDetailBloc =>
      _i10.CharacterDetailBloc(_getIt<_i7.CharacterDetailRepository>());
  @override
  _i11.CharacterListBloc get characterListBloc =>
      _i11.CharacterListBloc(_getIt<_i9.CharacterListRepository>());
}
