// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../config/app_config.dart' as _i635;
import '../../config/environment_config.dart' as _i1070;
import '../../features/home/data/datasources/transaction_data_source.dart'
    as _i613;
import '../../features/home/data/repositories/transaction_repository_impl.dart'
    as _i1044;
import '../../features/home/domain/repositories/transaction_repository.dart'
    as _i705;
import '../network/network.dart' as _i855;

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
    gh.singleton<_i1070.EnvironmentConfig>(() => _i1070.EnvironmentConfig());
    gh.factory<_i613.TransactionDataSource>(
      () => _i613.TransactionDataSourceImpl(),
    );
    gh.factory<_i855.NetworkInfo>(
      () => _i855.NetworkInfoImpl(gh<_i895.Connectivity>()),
    );
    gh.factory<_i705.TransactionRepository>(
      () => _i1044.TransactionRepositoryImpl(
        dataSource: gh<_i613.TransactionDataSource>(),
        networkInfo: gh<_i855.NetworkInfo>(),
      ),
    );
    gh.factory<_i635.AppConfig>(() => _i635.TestConfig(), registerFor: {_test});
    gh.factory<_i635.AppConfig>(() => _i635.DevConfig(), registerFor: {_dev});
    gh.factory<_i635.AppConfig>(() => _i635.ProdConfig(), registerFor: {_prod});
    return this;
  }
}
