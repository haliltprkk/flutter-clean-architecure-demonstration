// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/services_impl/default_orientation_service.dart' as _i5;
import '../../domain/orientation_service.dart' as _i3;
import 'service_module.dart' as _i4; // ignore_for_file: unnecessary_lambdas

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
  final serviceModule = _$ServiceModule();
  gh.lazySingleton<_i3.OrientationService>(
      () => serviceModule.defaultOrientationService);
  return get;
}

class _$ServiceModule extends _i4.ServiceModule {
  @override
  _i5.DefaultOrientationService get defaultOrientationService =>
      _i5.DefaultOrientationService();
}
