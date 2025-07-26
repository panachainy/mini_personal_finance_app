// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/config/app_config.dart' as _i221;
import '../core/config/environment_config.dart' as _i348;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i348.EnvironmentConfig>(() => _i348.EnvironmentConfig());
    gh.factory<_i221.AppConfig>(() => _i221.TestConfig(), registerFor: {_test});
    gh.factory<_i221.AppConfig>(() => _i221.DevConfig(), registerFor: {_dev});
    gh.factory<_i221.AppConfig>(() => _i221.ProdConfig(), registerFor: {_prod});
    return this;
  }
}
