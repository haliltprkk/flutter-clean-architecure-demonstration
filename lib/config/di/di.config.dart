// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/character_detail/api_service/character_detail_api_service.dart'
    as _i6;
import '../../data/character_detail/repository/character_detail_repository_impl.dart'
    as _i19;
import '../../data/character_list/api_service/character_list_api_service.dart'
    as _i9;
import '../../data/character_list/repository/character_list_repository_impl.dart'
    as _i20;
import '../../data/services_impl/default_orientation_service.dart' as _i17;
import '../../domain/character_detail/character_detail_repository.dart' as _i8;
import '../../domain/character_list/character_list_repository.dart' as _i10;
import '../../domain/common/orientation_service.dart' as _i5;
import '../../presentation/character_detail/character_detail_bloc.dart' as _i11;
import '../../presentation/character_list/character_list_bloc.dart' as _i12;
import '../../presentation/utils/app_navigator.dart' as _i3;
import '../../presentation/utils/app_navigator_beamer.dart' as _i14;
import '../api_config.dart' as _i7;
import 'bloc_module.dart' as _i21;
import 'main_module.dart' as _i13;
import 'netwoking_module.dart' as _i15;
import 'repository_module.dart' as _i18;
import 'service_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

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
  final mainModule = _$MainModule();
  final networkingModule = _$NetworkingModule();
  final serviceModule = _$ServiceModule();
  final repositoryModule = _$RepositoryModule(get);
  final blocModule = _$BlocModule(get);
  gh.lazySingleton<_i3.AppNavigator>(() => mainModule.appNavigator);
  gh.lazySingleton<_i4.Dio>(() => networkingModule.dio);
  gh.lazySingleton<_i5.OrientationService>(
      () => serviceModule.defaultOrientationService);
  gh.lazySingleton<_i6.CharacterDetailApiService>(
      () => networkingModule.getCharacterDetailApiService(
            get<_i4.Dio>(),
            get<_i7.ApiConfig>(),
          ));
  gh.lazySingleton<_i8.CharacterDetailRepository>(
      () => repositoryModule.characterDetailRepository);
  gh.lazySingleton<_i9.CharacterListApiService>(
      () => networkingModule.getCharacterListApiService(
            get<_i4.Dio>(),
            get<_i7.ApiConfig>(),
          ));
  gh.lazySingleton<_i10.CharacterListRepository>(
      () => repositoryModule.characterListRepository);
  gh.factory<_i11.CharacterDetailBloc>(() => blocModule.characterDetailBloc);
  gh.factory<_i12.CharacterListBloc>(() => blocModule.characterListBloc);
  return get;
}

class _$MainModule extends _i13.MainModule {
  @override
  _i14.BeamerNavigator get appNavigator => _i14.BeamerNavigator();
}

class _$NetworkingModule extends _i15.NetworkingModule {}

class _$ServiceModule extends _i16.ServiceModule {
  @override
  _i17.DefaultOrientationService get defaultOrientationService =>
      _i17.DefaultOrientationService();
}

class _$RepositoryModule extends _i18.RepositoryModule {
  _$RepositoryModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i19.CharacterDetailRepositoryImpl get characterDetailRepository =>
      _i19.CharacterDetailRepositoryImpl(
          _getIt<_i6.CharacterDetailApiService>());
  @override
  _i20.CharacterListRepositoryImpl get characterListRepository =>
      _i20.CharacterListRepositoryImpl(_getIt<_i9.CharacterListApiService>());
}

class _$BlocModule extends _i21.BlocModule {
  _$BlocModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i11.CharacterDetailBloc get characterDetailBloc =>
      _i11.CharacterDetailBloc(_getIt<_i8.CharacterDetailRepository>());
  @override
  _i12.CharacterListBloc get characterListBloc =>
      _i12.CharacterListBloc(_getIt<_i10.CharacterListRepository>());
}
