import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_personal_finance_app/config/environment_config.dart'
    as env_config;

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  final environmentConfig = env_config.EnvironmentConfig();

  String environment;
  switch (environmentConfig.currentEnvironment) {
    case env_config.Environment.dev:
      environment = 'dev';
      break;
    case env_config.Environment.test:
      environment = 'test';
      break;
    case env_config.Environment.prod:
      environment = 'prod';
      break;
  }

  getIt.init(environment: environment);
}

/// Configure dependencies for development environment
void configureDependenciesDev() {
  getIt.init(environment: 'dev');
}

/// Configure dependencies for test environment
void configureDependenciesTest() {
  getIt.init(environment: 'test');
}

/// Configure dependencies for production environment
void configureDependenciesProd() {
  getIt.init(environment: 'prod');
}
